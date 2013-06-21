.class Lcom/ui/LapseIt/remote/RemoteView$1;
.super Ljava/lang/Object;
.source "RemoteView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/remote/RemoteView;->buildNetworkErrorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/remote/RemoteView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/remote/RemoteView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/remote/RemoteView$1;->this$0:Lcom/ui/LapseIt/remote/RemoteView;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/ui/LapseIt/remote/RemoteView$1;->this$0:Lcom/ui/LapseIt/remote/RemoteView;

    invoke-virtual {v0}, Lcom/ui/LapseIt/remote/RemoteView;->finish()V

    .line 146
    return-void
.end method
