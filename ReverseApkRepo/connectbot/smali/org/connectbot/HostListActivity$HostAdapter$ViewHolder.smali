.class Lorg/connectbot/HostListActivity$HostAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "HostListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/HostListActivity$HostAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public caption:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageView;

.field public nickname:Landroid/widget/TextView;

.field final synthetic this$1:Lorg/connectbot/HostListActivity$HostAdapter;


# direct methods
.method constructor <init>(Lorg/connectbot/HostListActivity$HostAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lorg/connectbot/HostListActivity$HostAdapter$ViewHolder;->this$1:Lorg/connectbot/HostListActivity$HostAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
