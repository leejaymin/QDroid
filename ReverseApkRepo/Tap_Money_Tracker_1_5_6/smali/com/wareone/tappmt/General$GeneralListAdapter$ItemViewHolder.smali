.class Lcom/wareone/tappmt/General$GeneralListAdapter$ItemViewHolder;
.super Ljava/lang/Object;
.source "General.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wareone/tappmt/General$GeneralListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemViewHolder"
.end annotation


# instance fields
.field caption:Landroid/widget/TextView;

.field icon:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/wareone/tappmt/General$GeneralListAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/wareone/tappmt/General$GeneralListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/wareone/tappmt/General$GeneralListAdapter$ItemViewHolder;->this$1:Lcom/wareone/tappmt/General$GeneralListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wareone/tappmt/General$GeneralListAdapter;Lcom/wareone/tappmt/General$GeneralListAdapter$ItemViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lcom/wareone/tappmt/General$GeneralListAdapter$ItemViewHolder;-><init>(Lcom/wareone/tappmt/General$GeneralListAdapter;)V

    return-void
.end method
