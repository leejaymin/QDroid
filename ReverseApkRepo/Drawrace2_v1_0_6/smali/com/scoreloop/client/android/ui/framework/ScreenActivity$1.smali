.class Lcom/scoreloop/client/android/ui/framework/ScreenActivity$1;
.super Ljava/lang/Object;
.source "ScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->onShortcutClick(Lcom/scoreloop/client/android/ui/framework/ShortcutView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/framework/ScreenActivity;

.field final synthetic val$selection:I


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/framework/ScreenActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/framework/ScreenActivity$1;->this$0:Lcom/scoreloop/client/android/ui/framework/ScreenActivity;

    iput p2, p0, Lcom/scoreloop/client/android/ui/framework/ScreenActivity$1;->val$selection:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 256
    invoke-static {}, Lcom/scoreloop/client/android/ui/framework/ScreenManagerSingleton;->get()Lcom/scoreloop/client/android/ui/framework/ScreenManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/scoreloop/client/android/ui/framework/ScreenManager;->getCurrentDescription()Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v1

    .line 257
    .local v1, screenDescription:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->getShortcutObserver()Lcom/scoreloop/client/android/ui/framework/ScreenDescription$ShortcutObserver;

    move-result-object v0

    .line 258
    .local v0, observer:Lcom/scoreloop/client/android/ui/framework/ScreenDescription$ShortcutObserver;
    if-nez v0, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget v3, p0, Lcom/scoreloop/client/android/ui/framework/ScreenActivity$1;->val$selection:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 262
    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->getShortcutDescriptions()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/scoreloop/client/android/ui/framework/ScreenActivity$1;->val$selection:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;

    .line 263
    .local v2, shortcutDescription:Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;
    invoke-virtual {v2}, Lcom/scoreloop/client/android/ui/framework/ShortcutDescription;->getTextId()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription$ShortcutObserver;->onShortcut(I)V

    goto :goto_0
.end method
