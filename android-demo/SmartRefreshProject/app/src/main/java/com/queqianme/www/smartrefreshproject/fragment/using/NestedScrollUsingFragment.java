package com.queqianme.www.smartrefreshproject.fragment.using;


import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.design.widget.AppBarLayout;
import android.support.v4.app.Fragment;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.DividerItemDecoration;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;

import com.queqianme.www.smartrefreshproject.R;
import com.queqianme.www.smartrefreshproject.activity.FragmentActivity;
import com.queqianme.www.smartrefreshproject.adapter.BaseRecyclerAdapter;
import com.queqianme.www.smartrefreshproject.adapter.SmartViewHolder;
import com.queqianme.www.refresh_layout.api.RefreshLayout;
import com.queqianme.www.refresh_layout.listener.OnLoadmoreListener;

import java.util.Arrays;

import static android.R.layout.simple_list_item_2;
import static android.support.v7.widget.DividerItemDecoration.VERTICAL;

/**
 * 使用示例-嵌套滚动
 * A simple {@link Fragment} subclass.
 */
public class NestedScrollUsingFragment extends Fragment implements AdapterView.OnItemClickListener {

    public enum Item {
        NestedStandard("标准嵌套", NestedScrollUsingFragment.class),
        NestedIntegral("整体嵌套", NestedScrollUsingFragmentIntegral.class),
        ;
        public String name;
        public Class<?> clazz;
        Item(String name, Class<?> clazz) {
            this.name = name;
            this.clazz = clazz;
        }
    }

    private static boolean mNestedPager = false;

    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_using_nestedscroll, container, false);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        mNestedPager = false;
    }

    @Override
    public void onViewCreated(@NonNull final View root, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(root, savedInstanceState);

        Toolbar toolbar = (Toolbar) root.findViewById(R.id.toolbar);
        toolbar.setNavigationOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                getActivity().finish();
            }
        });

        final BaseRecyclerAdapter<Item> adapter;
        RecyclerView recyclerView = (RecyclerView) root.findViewById(R.id.recyclerView);
        recyclerView.setItemAnimator(new DefaultItemAnimator());
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        recyclerView.addItemDecoration(new DividerItemDecoration(getContext(), VERTICAL));
        recyclerView.setAdapter(adapter = new BaseRecyclerAdapter<Item>(Arrays.asList(Item.values()), simple_list_item_2, NestedScrollUsingFragment.this) {
            @Override
            protected void onBindViewHolder(SmartViewHolder holder, Item model, int position) {
                holder.text(android.R.id.text1, model.name());
                holder.text(android.R.id.text2, model.name);
                holder.textColorId(android.R.id.text2, R.color.colorTextAssistant);
            }
        });
        if (mNestedPager) {
            final Runnable loadmore = new Runnable() {
                @Override
                public void run() {
                    adapter.loadmore(Arrays.asList(Item.values()));
                    adapter.loadmore(Arrays.asList(Item.values()));
                    adapter.loadmore(Arrays.asList(Item.values()));
                    adapter.loadmore(Arrays.asList(Item.values()));
                    adapter.loadmore(Arrays.asList(Item.values()));
                    adapter.loadmore(Arrays.asList(Item.values()));
                    adapter.loadmore(Arrays.asList(Item.values()));
                }
            };
            RefreshLayout refreshLayout = root.findViewById(R.id.refreshLayout);
            refreshLayout.setDisableContentWhenLoading(true);
            refreshLayout.setEnableLoadmoreWhenContentNotFull(true);
            refreshLayout.setEnableScrollContentWhenLoaded(true);
//            refreshLayout.setEnableAutoLoadmore(true);
//            refreshLayout.setEnableNestedScroll(true);
            refreshLayout.setEnableLoadmore(true);
            refreshLayout.setOnLoadmoreListener(new OnLoadmoreListener() {
                @Override
                public void onLoadmore(RefreshLayout refreshlayout) {
                    refreshlayout.getLayout().postDelayed(loadmore, 2000);
                    refreshlayout.finishLoadmore(2000);
                }
            });
            loadmore.run();
        }

        /**
         * 监听 AppBarLayout 的关闭和开启 ActionButton 设置关闭隐藏动画
         */
        AppBarLayout appBarLayout = (AppBarLayout) root.findViewById(R.id.app_bar);
        appBarLayout.addOnOffsetChangedListener(new AppBarLayout.OnOffsetChangedListener() {
            boolean misAppbarExpand = true;
            View fab = root.findViewById(R.id.fab);
            @Override
            public void onOffsetChanged(AppBarLayout appBarLayout, int verticalOffset) {
                int scrollRange = appBarLayout.getTotalScrollRange();
                float fraction = 1f * (scrollRange + verticalOffset) / scrollRange;
                if (fraction < 0.1 && misAppbarExpand) {
                    misAppbarExpand = false;
                    fab.animate().scaleX(0).scaleY(0);
                }
                if (fraction > 0.8 && !misAppbarExpand) {
                    misAppbarExpand = true;
                    fab.animate().scaleX(1).scaleY(1);
                }
            }
        });

    }

    @Override
    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
        mNestedPager = true;
        Item item = Item.values()[position%Item.values().length];
        if (Activity.class.isAssignableFrom(item.clazz)) {
            startActivity(new Intent(getContext(), item.clazz));
        } else if (Fragment.class.isAssignableFrom(item.clazz)) {
            FragmentActivity.start(this, item.clazz);
        }
    }
}