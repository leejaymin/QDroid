.class Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection$1;
.super Ljava/lang/Object;
.source "PowerTop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;

.field private final synthetic val$filterToggle:Landroid/widget/TextView;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;ILandroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection$1;->this$1:Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;

    iput p2, p0, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection$1;->val$index:I

    iput-object p3, p0, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection$1;->val$filterToggle:Landroid/widget/TextView;

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 399
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection$1;->this$1:Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;

    #getter for: Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerTop;
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;->access$1(Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;)Ledu/umich/PowerTutor/ui/PowerTop;

    move-result-object v1

    #getter for: Ledu/umich/PowerTutor/ui/PowerTop;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/PowerTop;->access$6(Ledu/umich/PowerTutor/ui/PowerTop;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "topIgnoreMask"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 400
    .local v0, ignMask:I
    iget v1, p0, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection$1;->val$index:I

    shl-int v1, v4, v1

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    .line 401
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection$1;->this$1:Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;

    #getter for: Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerTop;
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;->access$1(Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;)Ledu/umich/PowerTutor/ui/PowerTop;

    move-result-object v1

    #getter for: Ledu/umich/PowerTutor/ui/PowerTop;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/PowerTop;->access$6(Ledu/umich/PowerTutor/ui/PowerTop;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "topIgnoreMask"

    iget v3, p0, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection$1;->val$index:I

    shl-int v3, v4, v3

    or-int/2addr v3, v0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 402
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 403
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection$1;->val$filterToggle:Landroid/widget/TextView;

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 409
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection$1;->this$1:Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;

    #getter for: Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerTop;
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;->access$1(Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;)Ledu/umich/PowerTutor/ui/PowerTop;

    move-result-object v1

    #getter for: Ledu/umich/PowerTutor/ui/PowerTop;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/PowerTop;->access$6(Ledu/umich/PowerTutor/ui/PowerTop;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "topIgnoreMask"

    iget v3, p0, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection$1;->val$index:I

    shl-int v3, v4, v3

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 406
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 407
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection$1;->val$filterToggle:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
