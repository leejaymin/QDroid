.class Lorg/connectbot/PubkeyListActivity$PubkeyAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PubkeyListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/PubkeyListActivity$PubkeyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public caption:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageView;

.field public nickname:Landroid/widget/TextView;

.field final synthetic this$1:Lorg/connectbot/PubkeyListActivity$PubkeyAdapter;


# direct methods
.method constructor <init>(Lorg/connectbot/PubkeyListActivity$PubkeyAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 620
    iput-object p1, p0, Lorg/connectbot/PubkeyListActivity$PubkeyAdapter$ViewHolder;->this$1:Lorg/connectbot/PubkeyListActivity$PubkeyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
