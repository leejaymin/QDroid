.class Lcom/fleapapa/helper/CallGrps$2;
.super Ljava/lang/Object;
.source "CallGrps.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallGrps;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallGrps;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallGrps;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallGrps$2;->this$0:Lcom/fleapapa/helper/CallGrps;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 83
    if-nez p2, :cond_0

    .line 84
    iget-object v0, p0, Lcom/fleapapa/helper/CallGrps$2;->this$0:Lcom/fleapapa/helper/CallGrps;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/CallGrps;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 85
    :cond_0
    return-void
.end method
