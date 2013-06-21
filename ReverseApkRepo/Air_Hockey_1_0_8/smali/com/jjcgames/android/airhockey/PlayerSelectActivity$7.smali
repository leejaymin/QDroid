.class Lcom/jjcgames/android/airhockey/PlayerSelectActivity$7;
.super Ljava/lang/Object;
.source "PlayerSelectActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jjcgames/android/airhockey/PlayerSelectActivity;

.field private final synthetic val$dialogView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/jjcgames/android/airhockey/PlayerSelectActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$7;->this$0:Lcom/jjcgames/android/airhockey/PlayerSelectActivity;

    iput-object p2, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$7;->val$dialogView:Landroid/view/View;

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$7;->val$dialogView:Landroid/view/View;

    .line 359
    const/high16 v1, 0x7f08

    .line 358
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/EditText;

    .line 359
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 360
    return-void
.end method
