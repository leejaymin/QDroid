.class Ledu/umich/PowerTutor/ui/AppChoiceView$1$1;
.super Ljava/lang/Object;
.source "AppChoiceView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/umich/PowerTutor/ui/AppChoiceView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ledu/umich/PowerTutor/ui/AppChoiceView$1;


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/ui/AppChoiceView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$1$1;->this$1:Ledu/umich/PowerTutor/ui/AppChoiceView$1;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 182
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 183
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "uid"

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$1$1;->this$1:Ledu/umich/PowerTutor/ui/AppChoiceView$1;

    #getter for: Ledu/umich/PowerTutor/ui/AppChoiceView$1;->this$0:Ledu/umich/PowerTutor/ui/AppChoiceView;
    invoke-static {v2}, Ledu/umich/PowerTutor/ui/AppChoiceView$1;->access$0(Ledu/umich/PowerTutor/ui/AppChoiceView$1;)Ledu/umich/PowerTutor/ui/AppChoiceView;

    move-result-object v2

    #getter for: Ledu/umich/PowerTutor/ui/AppChoiceView;->SeletedUid:I
    invoke-static {v2}, Ledu/umich/PowerTutor/ui/AppChoiceView;->access$2(Ledu/umich/PowerTutor/ui/AppChoiceView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    const-string v1, "package_name"

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$1$1;->this$1:Ledu/umich/PowerTutor/ui/AppChoiceView$1;

    #getter for: Ledu/umich/PowerTutor/ui/AppChoiceView$1;->this$0:Ledu/umich/PowerTutor/ui/AppChoiceView;
    invoke-static {v2}, Ledu/umich/PowerTutor/ui/AppChoiceView$1;->access$0(Ledu/umich/PowerTutor/ui/AppChoiceView$1;)Ledu/umich/PowerTutor/ui/AppChoiceView;

    move-result-object v2

    #getter for: Ledu/umich/PowerTutor/ui/AppChoiceView;->SeletedPackageName:Ljava/lang/String;
    invoke-static {v2}, Ledu/umich/PowerTutor/ui/AppChoiceView;->access$3(Ledu/umich/PowerTutor/ui/AppChoiceView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$1$1;->this$1:Ledu/umich/PowerTutor/ui/AppChoiceView$1;

    #getter for: Ledu/umich/PowerTutor/ui/AppChoiceView$1;->this$0:Ledu/umich/PowerTutor/ui/AppChoiceView;
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/AppChoiceView$1;->access$0(Ledu/umich/PowerTutor/ui/AppChoiceView$1;)Ledu/umich/PowerTutor/ui/AppChoiceView;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Ledu/umich/PowerTutor/ui/AppChoiceView;->setResult(ILandroid/content/Intent;)V

    .line 186
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$1$1;->this$1:Ledu/umich/PowerTutor/ui/AppChoiceView$1;

    #getter for: Ledu/umich/PowerTutor/ui/AppChoiceView$1;->this$0:Ledu/umich/PowerTutor/ui/AppChoiceView;
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/AppChoiceView$1;->access$0(Ledu/umich/PowerTutor/ui/AppChoiceView$1;)Ledu/umich/PowerTutor/ui/AppChoiceView;

    move-result-object v1

    invoke-virtual {v1}, Ledu/umich/PowerTutor/ui/AppChoiceView;->finish()V

    .line 187
    return-void
.end method
