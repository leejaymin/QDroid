.class Lorg/connectbot/ColorsActivity$ColorsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ColorsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/ColorsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorsAdapter"
.end annotation


# instance fields
.field private mSquareViews:Z

.field final synthetic this$0:Lorg/connectbot/ColorsActivity;


# direct methods
.method public constructor <init>(Lorg/connectbot/ColorsActivity;Z)V
    .locals 0
    .parameter
    .parameter "squareViews"

    .prologue
    .line 116
    iput-object p1, p0, Lorg/connectbot/ColorsActivity$ColorsAdapter;->this$0:Lorg/connectbot/ColorsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 117
    iput-boolean p2, p0, Lorg/connectbot/ColorsActivity$ColorsAdapter;->mSquareViews:Z

    .line 118
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/connectbot/ColorsActivity$ColorsAdapter;->this$0:Lorg/connectbot/ColorsActivity;

    #getter for: Lorg/connectbot/ColorsActivity;->mColorList:Ljava/util/List;
    invoke-static {v0}, Lorg/connectbot/ColorsActivity;->access$0(Lorg/connectbot/ColorsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 140
    iget-object v0, p0, Lorg/connectbot/ColorsActivity$ColorsAdapter;->this$0:Lorg/connectbot/ColorsActivity;

    #getter for: Lorg/connectbot/ColorsActivity;->mColorList:Ljava/util/List;
    invoke-static {v0}, Lorg/connectbot/ColorsActivity;->access$0(Lorg/connectbot/ColorsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 144
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 123
    if-nez p2, :cond_0

    .line 124
    new-instance v0, Lorg/connectbot/ColorsActivity$ColorView;

    iget-object v1, p0, Lorg/connectbot/ColorsActivity$ColorsAdapter;->this$0:Lorg/connectbot/ColorsActivity;

    iget-object v2, p0, Lorg/connectbot/ColorsActivity$ColorsAdapter;->this$0:Lorg/connectbot/ColorsActivity;

    iget-boolean v3, p0, Lorg/connectbot/ColorsActivity$ColorsAdapter;->mSquareViews:Z

    invoke-direct {v0, v1, v2, v3}, Lorg/connectbot/ColorsActivity$ColorView;-><init>(Lorg/connectbot/ColorsActivity;Landroid/content/Context;Z)V

    .line 129
    .local v0, c:Lorg/connectbot/ColorsActivity$ColorView;
    :goto_0
    iget-object v1, p0, Lorg/connectbot/ColorsActivity$ColorsAdapter;->this$0:Lorg/connectbot/ColorsActivity;

    #getter for: Lorg/connectbot/ColorsActivity;->mColorList:Ljava/util/List;
    invoke-static {v1}, Lorg/connectbot/ColorsActivity;->access$0(Lorg/connectbot/ColorsActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/connectbot/ColorsActivity$ColorView;->setColor(I)V

    .line 130
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lorg/connectbot/ColorsActivity$ColorView;->setNumber(I)V

    .line 132
    return-object v0

    .end local v0           #c:Lorg/connectbot/ColorsActivity$ColorView;
    :cond_0
    move-object v0, p2

    .line 126
    check-cast v0, Lorg/connectbot/ColorsActivity$ColorView;

    .restart local v0       #c:Lorg/connectbot/ColorsActivity$ColorView;
    goto :goto_0
.end method
