.class Lorg/appcelerator/titanium/TiLaunchActivity$1;
.super Ljava/lang/Object;
.source "TiLaunchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/TiLaunchActivity;->alertMissingLauncher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/TiLaunchActivity;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/TiLaunchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lorg/appcelerator/titanium/TiLaunchActivity$1;->this$0:Lorg/appcelerator/titanium/TiLaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 144
    iget-object v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity$1;->this$0:Lorg/appcelerator/titanium/TiLaunchActivity;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiLaunchActivity;->restartActivity(I)V

    .line 145
    return-void
.end method
