.class Ledu/umich/PowerTutor/ui/AppChoiceView$1;
.super Ljava/lang/Object;
.source "AppChoiceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/umich/PowerTutor/ui/AppChoiceView;->showMessageDialog(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/ui/AppChoiceView;

.field private final synthetic val$message:Ljava/lang/CharSequence;

.field private final synthetic val$success:Z


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/ui/AppChoiceView;Ljava/lang/CharSequence;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$1;->this$0:Ledu/umich/PowerTutor/ui/AppChoiceView;

    iput-object p2, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$1;->val$message:Ljava/lang/CharSequence;

    iput-boolean p3, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$1;->val$success:Z

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ledu/umich/PowerTutor/ui/AppChoiceView$1;)Ledu/umich/PowerTutor/ui/AppChoiceView;
    .locals 1
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$1;->this$0:Ledu/umich/PowerTutor/ui/AppChoiceView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 172
    const/4 v1, 0x0

    .line 173
    .local v1, dialog:Landroid/app/AlertDialog;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$1;->this$0:Ledu/umich/PowerTutor/ui/AppChoiceView;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 174
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$1;->val$message:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$1;->this$0:Ledu/umich/PowerTutor/ui/AppChoiceView;

    #getter for: Ledu/umich/PowerTutor/ui/AppChoiceView;->SeletedUid:I
    invoke-static {v3}, Ledu/umich/PowerTutor/ui/AppChoiceView;->access$2(Ledu/umich/PowerTutor/ui/AppChoiceView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$1;->this$0:Ledu/umich/PowerTutor/ui/AppChoiceView;

    #getter for: Ledu/umich/PowerTutor/ui/AppChoiceView;->SeletedPackageName:Ljava/lang/String;
    invoke-static {v3}, Ledu/umich/PowerTutor/ui/AppChoiceView;->access$3(Ledu/umich/PowerTutor/ui/AppChoiceView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 175
    const-string v2, "ok"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    iget-boolean v2, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$1;->val$success:Z

    if-eqz v2, :cond_0

    const v2, 0x108009b

    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 178
    iget-boolean v2, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$1;->val$success:Z

    if-eqz v2, :cond_1

    const-string v2, "success"

    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 179
    const-string v2, "ok"

    new-instance v3, Ledu/umich/PowerTutor/ui/AppChoiceView$1$1;

    invoke-direct {v3, p0}, Ledu/umich/PowerTutor/ui/AppChoiceView$1$1;-><init>(Ledu/umich/PowerTutor/ui/AppChoiceView$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 189
    const-string v2, "cancel"

    new-instance v3, Ledu/umich/PowerTutor/ui/AppChoiceView$1$2;

    invoke-direct {v3, p0}, Ledu/umich/PowerTutor/ui/AppChoiceView$1$2;-><init>(Ledu/umich/PowerTutor/ui/AppChoiceView$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 198
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 199
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 200
    return-void

    .line 177
    :cond_0
    const v2, 0x1080027

    goto :goto_0

    .line 178
    :cond_1
    const-string v2, "error"

    goto :goto_1
.end method
