.class final Lcom/google/ads/util/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Landroid/webkit/JsPromptResult;


# direct methods
.method constructor <init>(Landroid/webkit/JsPromptResult;)V
    .locals 0
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/google/ads/util/t;->a:Landroid/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/ads/util/t;->a:Landroid/webkit/JsPromptResult;

    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 423
    return-void
.end method