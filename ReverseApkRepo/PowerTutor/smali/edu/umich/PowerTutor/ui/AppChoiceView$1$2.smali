.class Ledu/umich/PowerTutor/ui/AppChoiceView$1$2;
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
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$1$2;->this$1:Ledu/umich/PowerTutor/ui/AppChoiceView$1;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 194
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$1$2;->this$1:Ledu/umich/PowerTutor/ui/AppChoiceView$1;

    #getter for: Ledu/umich/PowerTutor/ui/AppChoiceView$1;->this$0:Ledu/umich/PowerTutor/ui/AppChoiceView;
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/AppChoiceView$1;->access$0(Ledu/umich/PowerTutor/ui/AppChoiceView$1;)Ledu/umich/PowerTutor/ui/AppChoiceView;

    move-result-object v0

    .line 195
    const-string v1, "cancel"

    const/4 v2, 0x0

    .line 194
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 196
    return-void
.end method
