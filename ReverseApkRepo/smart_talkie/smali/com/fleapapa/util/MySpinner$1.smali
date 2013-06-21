.class Lcom/fleapapa/util/MySpinner$1;
.super Ljava/lang/Object;
.source "MySpinner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/util/MySpinner;->onFocusChanged(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/util/MySpinner;

.field private final synthetic val$spin:Lcom/fleapapa/util/MySpinner;


# direct methods
.method constructor <init>(Lcom/fleapapa/util/MySpinner;Lcom/fleapapa/util/MySpinner;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/util/MySpinner$1;->this$0:Lcom/fleapapa/util/MySpinner;

    iput-object p2, p0, Lcom/fleapapa/util/MySpinner$1;->val$spin:Lcom/fleapapa/util/MySpinner;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 46
    iget-object v4, p0, Lcom/fleapapa/util/MySpinner$1;->val$spin:Lcom/fleapapa/util/MySpinner;

    invoke-virtual {v4}, Lcom/fleapapa/util/MySpinner;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 50
    .local v2, focus:Landroid/view/View;
    :try_start_0
    move-object v0, v2

    check-cast v0, Lcom/fleapapa/util/MySpinner;

    move-object v3, v0

    .local v3, spin2:Lcom/fleapapa/util/MySpinner;
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/fleapapa/util/MySpinner;->keepopen:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    iget-object v4, p0, Lcom/fleapapa/util/MySpinner$1;->val$spin:Lcom/fleapapa/util/MySpinner;

    invoke-virtual {v4}, Lcom/fleapapa/util/MySpinner;->requestFocus()Z

    .line 56
    iget-object v4, p0, Lcom/fleapapa/util/MySpinner$1;->val$spin:Lcom/fleapapa/util/MySpinner;

    new-instance v5, Landroid/view/KeyEvent;

    invoke-direct {v5, v6, v8}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/fleapapa/util/MySpinner;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 57
    iget-object v4, p0, Lcom/fleapapa/util/MySpinner$1;->val$spin:Lcom/fleapapa/util/MySpinner;

    new-instance v5, Landroid/view/KeyEvent;

    invoke-direct {v5, v7, v8}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/fleapapa/util/MySpinner;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 58
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 59
    if-eqz v3, :cond_0

    .line 60
    iput-boolean v6, v3, Lcom/fleapapa/util/MySpinner;->keepopen:Z

    .line 61
    :cond_0
    return-void

    .line 52
    .end local v3           #spin2:Lcom/fleapapa/util/MySpinner;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 53
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .restart local v3       #spin2:Lcom/fleapapa/util/MySpinner;
    goto :goto_0
.end method
