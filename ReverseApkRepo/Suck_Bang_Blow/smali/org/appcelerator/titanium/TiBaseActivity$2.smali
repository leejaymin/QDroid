.class Lorg/appcelerator/titanium/TiBaseActivity$2;
.super Landroid/view/OrientationEventListener;
.source "TiBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/TiBaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/TiBaseActivity;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/TiBaseActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 280
    iput-object p1, p0, Lorg/appcelerator/titanium/TiBaseActivity$2;->this$0:Lorg/appcelerator/titanium/TiBaseActivity;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 283
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity$2;->this$0:Lorg/appcelerator/titanium/TiBaseActivity;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/TiBaseActivity;->onOrientationChanged(I)V

    .line 284
    return-void
.end method
