.class Lcom/fleapapa/helper/PhoneChange$3;
.super Ljava/lang/Object;
.source "PhoneChange.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/PhoneChange;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/PhoneChange;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/PhoneChange;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/PhoneChange$3;->this$0:Lcom/fleapapa/helper/PhoneChange;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    .line 89
    iget-object v1, p0, Lcom/fleapapa/helper/PhoneChange$3;->this$0:Lcom/fleapapa/helper/PhoneChange;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fleapapa/helper/PhoneChange$3;->this$0:Lcom/fleapapa/helper/PhoneChange;

    const v4, 0x7f0600cd

    invoke-virtual {v3, v4}, Lcom/fleapapa/helper/PhoneChange;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 90
    .local v0, pdlg:Landroid/app/ProgressDialog;
    iget-object v1, p0, Lcom/fleapapa/helper/PhoneChange$3;->this$0:Lcom/fleapapa/helper/PhoneChange;

    invoke-virtual {v1, v5}, Lcom/fleapapa/helper/PhoneChange;->move(Z)V

    .line 91
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 92
    return-void
.end method
