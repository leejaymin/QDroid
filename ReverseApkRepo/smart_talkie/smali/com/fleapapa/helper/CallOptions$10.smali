.class Lcom/fleapapa/helper/CallOptions$10;
.super Ljava/lang/Object;
.source "CallOptions.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallOptions;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallOptions;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallOptions$10;->this$0:Lcom/fleapapa/helper/CallOptions;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 88
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 89
    .local v0, n:I
    if-ltz v0, :cond_0

    .line 90
    sget-object v1, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iput v0, v1, Lcom/fleapapa/helper/CallPapa;->maxIdleMins:I

    .line 91
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "maxIdleMins"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget v3, v3, Lcom/fleapapa/helper/CallPapa;->maxIdleMins:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/fleapapa/util/MyUtil;->putPreference([Ljava/lang/String;)V

    .line 93
    :cond_0
    sget-object v1, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget v1, v1, Lcom/fleapapa/helper/CallPapa;->maxIdleMins:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v1, p0, Lcom/fleapapa/helper/CallOptions$10;->this$0:Lcom/fleapapa/helper/CallOptions;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/CallOptions;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 95
    return v4
.end method
