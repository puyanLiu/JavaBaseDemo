.class public interface abstract annotation Lcom/googlecode/androidannotations/annotations/UiThread;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/googlecode/androidannotations/annotations/UiThread;
        delay = 0x0L
        id = ""
        propagation = .enum Lcom/googlecode/androidannotations/annotations/UiThread$Propagation;->ENQUEUE:Lcom/googlecode/androidannotations/annotations/UiThread$Propagation;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract delay()J
.end method

.method public abstract id()Ljava/lang/String;
.end method

.method public abstract propagation()Lcom/googlecode/androidannotations/annotations/UiThread$Propagation;
.end method
