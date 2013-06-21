.class Lcom/fleapapa/helper/CallOptions$9;
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
    iput-object p1, p0, Lcom/fleapapa/helper/CallOptions$9;->this$0:Lcom/fleapapa/helper/CallOptions;

    .line 74
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
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 77
    .local v0, n:I
    if-gt v4, v0, :cond_0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    .line 78
    sget-object v1, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iput v0, v1, Lcom/fleapapa/helper/CallPapa;->maxCall:I

    .line 79
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "maxCall"

    aput-object v2, v1, v3

    sget-object v2, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget v2, v2, Lcom/fleapapa/helper/CallPapa;->maxCall:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/fleapapa/util/MyUtil;->putPreference([Ljava/lang/String;)V

    .line 81
    :cond_0
    sget-object v1, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget v1, v1, Lcom/fleapapa/helper/CallPapa;->maxCall:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v1, p0, Lcom/fleapapa/helper/CallOptions$9;->this$0:Lcom/fleapapa/helper/CallOptions;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/CallOptions;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 83
    return v3
.end method
