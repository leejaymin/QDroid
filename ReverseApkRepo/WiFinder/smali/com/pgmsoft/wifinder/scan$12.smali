.class Lcom/pgmsoft/wifinder/scan$12;
.super Ljava/lang/Object;
.source "scan.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pgmsoft/wifinder/scan;->showDialogNetwork(Ljava/lang/Object;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pgmsoft/wifinder/scan;

.field private final synthetic val$passwd:Landroid/widget/EditText;

.field private final synthetic val$showPasswd:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/pgmsoft/wifinder/scan;Landroid/widget/CheckBox;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pgmsoft/wifinder/scan$12;->this$0:Lcom/pgmsoft/wifinder/scan;

    iput-object p2, p0, Lcom/pgmsoft/wifinder/scan$12;->val$showPasswd:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/pgmsoft/wifinder/scan$12;->val$passwd:Landroid/widget/EditText;

    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 617
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$12;->val$showPasswd:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$12;->val$passwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 622
    :goto_0
    return-void

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$12;->val$passwd:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method
