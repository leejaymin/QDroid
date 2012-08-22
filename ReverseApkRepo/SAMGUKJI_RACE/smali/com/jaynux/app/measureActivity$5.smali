.class Lcom/jaynux/app/measureActivity$5;
.super Ljava/lang/Object;
.source "measureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaynux/app/measureActivity;->showMessageDialog(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaynux/app/measureActivity;

.field private final synthetic val$message:Ljava/lang/CharSequence;

.field private final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/jaynux/app/measureActivity;Ljava/lang/CharSequence;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jaynux/app/measureActivity$5;->this$0:Lcom/jaynux/app/measureActivity;

    iput-object p2, p0, Lcom/jaynux/app/measureActivity$5;->val$message:Ljava/lang/CharSequence;

    iput-boolean p3, p0, Lcom/jaynux/app/measureActivity$5;->val$success:Z

    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jaynux/app/measureActivity$5;)Lcom/jaynux/app/measureActivity;
    .locals 1
    .parameter

    .prologue
    .line 644
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$5;->this$0:Lcom/jaynux/app/measureActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 646
    const/4 v1, 0x0

    .line 647
    .local v1, dialog:Landroid/app/AlertDialog;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/jaynux/app/measureActivity$5;->this$0:Lcom/jaynux/app/measureActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 648
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$5;->val$message:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 649
    iget-object v2, p0, Lcom/jaynux/app/measureActivity$5;->this$0:Lcom/jaynux/app/measureActivity;

    const v3, 0x7f07001c

    invoke-virtual {v2, v3}, Lcom/jaynux/app/measureActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 650
    iget-boolean v2, p0, Lcom/jaynux/app/measureActivity$5;->val$success:Z

    if-eqz v2, :cond_0

    const v2, 0x108009b

    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 652
    iget-boolean v2, p0, Lcom/jaynux/app/measureActivity$5;->val$success:Z

    if-eqz v2, :cond_1

    const v2, 0x7f07001e

    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 653
    const-string v2, "acepte"

    new-instance v3, Lcom/jaynux/app/measureActivity$5$1;

    invoke-direct {v3, p0}, Lcom/jaynux/app/measureActivity$5$1;-><init>(Lcom/jaynux/app/measureActivity$5;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 674
    const-string v2, "cancel"

    new-instance v3, Lcom/jaynux/app/measureActivity$5$2;

    invoke-direct {v3, p0}, Lcom/jaynux/app/measureActivity$5$2;-><init>(Lcom/jaynux/app/measureActivity$5;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 698
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 699
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 700
    return-void

    .line 651
    :cond_0
    const v2, 0x1080027

    goto :goto_0

    .line 652
    :cond_1
    const v2, 0x7f07001d

    goto :goto_1
.end method
