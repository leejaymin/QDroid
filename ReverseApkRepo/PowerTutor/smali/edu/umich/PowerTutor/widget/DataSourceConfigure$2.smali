.class Ledu/umich/PowerTutor/widget/DataSourceConfigure$2;
.super Ljava/lang/Object;
.source "DataSourceConfigure.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/umich/PowerTutor/widget/DataSourceConfigure;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/widget/DataSourceConfigure;

.field private final synthetic val$items:[Ledu/umich/PowerTutor/widget/DataSourceConfigure$Item;


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/widget/DataSourceConfigure;[Ledu/umich/PowerTutor/widget/DataSourceConfigure$Item;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure$2;->this$0:Ledu/umich/PowerTutor/widget/DataSourceConfigure;

    iput-object p2, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure$2;->val$items:[Ledu/umich/PowerTutor/widget/DataSourceConfigure$Item;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 91
    iget-object v0, p0, Ledu/umich/PowerTutor/widget/DataSourceConfigure$2;->val$items:[Ledu/umich/PowerTutor/widget/DataSourceConfigure$Item;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Ledu/umich/PowerTutor/widget/DataSourceConfigure$Item;->onClick()V

    .line 92
    return-void
.end method
