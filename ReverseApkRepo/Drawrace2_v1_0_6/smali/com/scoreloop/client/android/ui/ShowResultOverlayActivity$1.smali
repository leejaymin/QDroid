.class Lcom/scoreloop/client/android/ui/ShowResultOverlayActivity$1;
.super Ljava/lang/Object;
.source "ShowResultOverlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/ShowResultOverlayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/ShowResultOverlayActivity;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/ShowResultOverlayActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/ShowResultOverlayActivity$1;->this$0:Lcom/scoreloop/client/android/ui/ShowResultOverlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/ShowResultOverlayActivity$1;->this$0:Lcom/scoreloop/client/android/ui/ShowResultOverlayActivity;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/ShowResultOverlayActivity;->finish()V

    .line 92
    return-void
.end method
