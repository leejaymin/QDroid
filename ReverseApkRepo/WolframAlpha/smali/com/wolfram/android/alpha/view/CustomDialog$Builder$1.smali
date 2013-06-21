.class Lcom/wolfram/android/alpha/view/CustomDialog$Builder$1;
.super Ljava/lang/Object;
.source "CustomDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->create()Lcom/wolfram/android/alpha/view/CustomDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

.field final synthetic val$dialog:Lcom/wolfram/android/alpha/view/CustomDialog;


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/view/CustomDialog$Builder;Lcom/wolfram/android/alpha/view/CustomDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder$1;->this$0:Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    iput-object p2, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder$1;->val$dialog:Lcom/wolfram/android/alpha/view/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder$1;->this$0:Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    #getter for: Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->access$000(Lcom/wolfram/android/alpha/view/CustomDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder$1;->val$dialog:Lcom/wolfram/android/alpha/view/CustomDialog;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 188
    return-void
.end method
