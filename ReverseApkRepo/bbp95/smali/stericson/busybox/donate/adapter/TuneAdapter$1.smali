.class Lstericson/busybox/donate/adapter/TuneAdapter$1;
.super Ljava/lang/Object;
.source "TuneAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lstericson/busybox/donate/adapter/TuneAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lstericson/busybox/donate/adapter/TuneAdapter;

.field private final synthetic val$app:Lstericson/busybox/donate/App;


# direct methods
.method constructor <init>(Lstericson/busybox/donate/adapter/TuneAdapter;Lstericson/busybox/donate/App;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lstericson/busybox/donate/adapter/TuneAdapter$1;->this$0:Lstericson/busybox/donate/adapter/TuneAdapter;

    iput-object p2, p0, Lstericson/busybox/donate/adapter/TuneAdapter$1;->val$app:Lstericson/busybox/donate/App;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lstericson/busybox/donate/adapter/TuneAdapter$1;->val$app:Lstericson/busybox/donate/App;

    invoke-virtual {v1}, Lstericson/busybox/donate/App;->getItemList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 182
    iget-object v1, p0, Lstericson/busybox/donate/adapter/TuneAdapter$1;->this$0:Lstericson/busybox/donate/adapter/TuneAdapter;

    invoke-virtual {v1}, Lstericson/busybox/donate/adapter/TuneAdapter;->notifyDataSetChanged()V

    .line 184
    :cond_0
    return-void

    .line 177
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lstericson/busybox/donate/domain/Item;

    .line 179
    .local v0, item:Lstericson/busybox/donate/domain/Item;
    invoke-virtual {v0, p2}, Lstericson/busybox/donate/domain/Item;->setOverwriteAll(Z)V

    goto :goto_0
.end method
