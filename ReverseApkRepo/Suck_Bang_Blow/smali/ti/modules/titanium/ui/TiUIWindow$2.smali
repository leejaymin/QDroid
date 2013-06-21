.class Lti/modules/titanium/ui/TiUIWindow$2;
.super Ljava/lang/Object;
.source "TiUIWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/TiUIWindow;->setActivityBackground(Landroid/graphics/drawable/Drawable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/TiUIWindow;

.field final synthetic val$drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/TiUIWindow;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lti/modules/titanium/ui/TiUIWindow$2;->this$0:Lti/modules/titanium/ui/TiUIWindow;

    iput-object p2, p0, Lti/modules/titanium/ui/TiUIWindow$2;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIWindow$2;->this$0:Lti/modules/titanium/ui/TiUIWindow;

    iget-object v0, v0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/ui/TiUIWindow$2;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 386
    return-void
.end method
