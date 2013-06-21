.class Ledu/umich/PowerTutor/ui/MiscView$2;
.super Ljava/lang/Object;
.source "MiscView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/umich/PowerTutor/ui/MiscView;->refreshView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/ui/MiscView;

.field private final synthetic val$allItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/ui/MiscView;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/MiscView$2;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    iput-object p2, p0, Ledu/umich/PowerTutor/ui/MiscView$2;->val$allItems:Ljava/util/ArrayList;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 123
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/MiscView$2;->val$allItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 128
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/MiscView$2;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->handler:Landroid/os/Handler;
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/MiscView;->access$7(Ledu/umich/PowerTutor/ui/MiscView;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/MiscView$2;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->handler:Landroid/os/Handler;
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/MiscView;->access$7(Ledu/umich/PowerTutor/ui/MiscView;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
    :cond_1
    return-void

    .line 123
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/umich/PowerTutor/ui/MiscView$InfoItem;

    .line 124
    .local v0, inf:Ledu/umich/PowerTutor/ui/MiscView$InfoItem;
    invoke-virtual {v0}, Ledu/umich/PowerTutor/ui/MiscView$InfoItem;->available()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {v0}, Ledu/umich/PowerTutor/ui/MiscView$InfoItem;->setupView()V

    goto :goto_0
.end method
