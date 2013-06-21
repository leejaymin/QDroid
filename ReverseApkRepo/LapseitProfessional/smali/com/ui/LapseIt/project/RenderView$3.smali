.class Lcom/ui/LapseIt/project/RenderView$3;
.super Ljava/lang/Object;
.source "RenderView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/project/RenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/project/RenderView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/project/RenderView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/project/RenderView$3;->this$0:Lcom/ui/LapseIt/project/RenderView;

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 316
    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    .line 317
    if-nez p2, :cond_1

    .line 318
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_1

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/ui/LapseIt/project/RenderView$3;->this$0:Lcom/ui/LapseIt/project/RenderView;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/ui/LapseIt/project/RenderView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 321
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 323
    invoke-virtual {p1}, Landroid/widget/TextView;->clearFocus()V

    .line 324
    iget-object v1, p0, Lcom/ui/LapseIt/project/RenderView$3;->this$0:Lcom/ui/LapseIt/project/RenderView;

    iget-object v1, v1, Lcom/ui/LapseIt/project/RenderView;->renderFormat:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 326
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return v3
.end method
