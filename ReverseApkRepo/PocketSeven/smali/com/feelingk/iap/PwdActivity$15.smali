.class Lcom/feelingk/iap/PwdActivity$15;
.super Ljava/lang/Object;
.source "PwdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feelingk/iap/PwdActivity;->viewPortrait()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/PwdActivity;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/PwdActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/PwdActivity$15;->this$0:Lcom/feelingk/iap/PwdActivity;

    .line 1080
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x4

    .line 1082
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$15;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget v0, v0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    if-ge v0, v3, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$15;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget v1, v0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    .line 1084
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$15;->this$0:Lcom/feelingk/iap/PwdActivity;

    invoke-virtual {v0}, Lcom/feelingk/iap/PwdActivity;->checkDot()V

    .line 1085
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$15;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget-object v1, v0, Lcom/feelingk/iap/PwdActivity;->inputNum:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "4"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/feelingk/iap/PwdActivity;->inputNum:Ljava/lang/String;

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$15;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->inputNum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1090
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$15;->this$0:Lcom/feelingk/iap/PwdActivity;

    invoke-virtual {v0}, Lcom/feelingk/iap/PwdActivity;->checkInputNum()V

    .line 1092
    :cond_1
    return-void
.end method