.class Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$8;
.super Ljava/lang/Object;
.source "ViewImageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$8;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    .line 768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 770
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 771
    return-void
.end method
