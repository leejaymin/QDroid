.class Lcom/inmobi/androidsdk/IMBrowserActivity$2;
.super Ljava/lang/Object;
.source "IMBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/IMBrowserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/IMBrowserActivity;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMBrowserActivity$2;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 215
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->userInitiatedClose:Z

    .line 216
    invoke-static {}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a()Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->close()V

    .line 217
    return-void
.end method
