package camera.com.queqianme.www.grouprecyclerviewadapterproject.demo.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.widget.TextView;
import android.widget.Toast;

import camera.com.queqianme.www.grouprecyclerviewadapterproject.R;
import camera.com.queqianme.www.grouprecyclerviewadapterproject.demo.adapter.NoHeaderAdapter;
import camera.com.queqianme.www.grouprecyclerviewadapterproject.demo.model.GroupModel;
import camera.com.queqianme.www.grouprecyclerviewadapterproject.group.BaseViewHolder;
import camera.com.queqianme.www.grouprecyclerviewadapterproject.group.GroupedRecyclerViewAdapter;

/**
 * 没有组头的分组列表。
 */
public class NoHeaderActivity extends AppCompatActivity {

    private TextView tvTitle;
    private RecyclerView rvList;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_group_list);

        tvTitle = (TextView) findViewById(R.id.tv_title);
        rvList = (RecyclerView) findViewById(R.id.rv_list);

        tvTitle.setText(R.string.no_header);

        rvList.setLayoutManager(new LinearLayoutManager(this));
        NoHeaderAdapter adapter = new NoHeaderAdapter(this, GroupModel.getGroups(10, 5));
        adapter.setOnFooterClickListener(new GroupedRecyclerViewAdapter.OnFooterClickListener() {
            @Override
            public void onFooterClick(GroupedRecyclerViewAdapter adapter, BaseViewHolder holder, int groupPosition) {
                Toast.makeText(NoHeaderActivity.this, "组尾：groupPosition = " + groupPosition,
                        Toast.LENGTH_LONG).show();
            }
        });
        adapter.setOnChildClickListener(new GroupedRecyclerViewAdapter.OnChildClickListener() {
            @Override
            public void onChildClick(GroupedRecyclerViewAdapter adapter, BaseViewHolder holder,
                                     int groupPosition, int childPosition) {
                Toast.makeText(NoHeaderActivity.this, "子项：groupPosition = " + groupPosition
                                + ", childPosition = " + childPosition,
                        Toast.LENGTH_LONG).show();
            }
        });
        rvList.setAdapter(adapter);
    }

    public static void openActivity(Context context) {
        Intent intent = new Intent(context, NoHeaderActivity.class);
        context.startActivity(intent);
    }
}