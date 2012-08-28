.class Lorg/connectbot/ColorsActivity$1;
.super Ljava/lang/Object;
.source "ColorsActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/ColorsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/ColorsActivity;


# direct methods
.method constructor <init>(Lorg/connectbot/ColorsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/ColorsActivity$1;->this$0:Lorg/connectbot/ColorsActivity;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x0

    .line 311
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lorg/connectbot/util/Colors;->defaults:[Ljava/lang/Integer;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 317
    iget-object v1, p0, Lorg/connectbot/ColorsActivity$1;->this$0:Lorg/connectbot/ColorsActivity;

    #getter for: Lorg/connectbot/ColorsActivity;->mColorGrid:Landroid/widget/GridView;
    invoke-static {v1}, Lorg/connectbot/ColorsActivity;->access$2(Lorg/connectbot/ColorsActivity;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->invalidateViews()V

    .line 320
    iget-object v1, p0, Lorg/connectbot/ColorsActivity$1;->this$0:Lorg/connectbot/ColorsActivity;

    #getter for: Lorg/connectbot/ColorsActivity;->mFgSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lorg/connectbot/ColorsActivity;->access$3(Lorg/connectbot/ColorsActivity;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 321
    iget-object v1, p0, Lorg/connectbot/ColorsActivity$1;->this$0:Lorg/connectbot/ColorsActivity;

    #getter for: Lorg/connectbot/ColorsActivity;->mBgSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lorg/connectbot/ColorsActivity;->access$4(Lorg/connectbot/ColorsActivity;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 322
    iget-object v1, p0, Lorg/connectbot/ColorsActivity$1;->this$0:Lorg/connectbot/ColorsActivity;

    #getter for: Lorg/connectbot/ColorsActivity;->hostdb:Lorg/connectbot/util/HostDatabase;
    invoke-static {v1}, Lorg/connectbot/ColorsActivity;->access$1(Lorg/connectbot/ColorsActivity;)Lorg/connectbot/util/HostDatabase;

    move-result-object v1

    invoke-virtual {v1, v3, v4, v3}, Lorg/connectbot/util/HostDatabase;->setDefaultColorsForScheme(III)V

    .line 325
    const/4 v1, 0x1

    return v1

    .line 312
    :cond_0
    iget-object v1, p0, Lorg/connectbot/ColorsActivity$1;->this$0:Lorg/connectbot/ColorsActivity;

    #getter for: Lorg/connectbot/ColorsActivity;->mColorList:Ljava/util/List;
    invoke-static {v1}, Lorg/connectbot/ColorsActivity;->access$0(Lorg/connectbot/ColorsActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/connectbot/util/Colors;->defaults:[Ljava/lang/Integer;

    aget-object v2, v2, v0

    if-eq v1, v2, :cond_1

    .line 313
    iget-object v1, p0, Lorg/connectbot/ColorsActivity$1;->this$0:Lorg/connectbot/ColorsActivity;

    #getter for: Lorg/connectbot/ColorsActivity;->hostdb:Lorg/connectbot/util/HostDatabase;
    invoke-static {v1}, Lorg/connectbot/ColorsActivity;->access$1(Lorg/connectbot/ColorsActivity;)Lorg/connectbot/util/HostDatabase;

    move-result-object v1

    sget-object v2, Lorg/connectbot/util/Colors;->defaults:[Ljava/lang/Integer;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/connectbot/util/HostDatabase;->setGlobalColor(II)V

    .line 314
    iget-object v1, p0, Lorg/connectbot/ColorsActivity$1;->this$0:Lorg/connectbot/ColorsActivity;

    #getter for: Lorg/connectbot/ColorsActivity;->mColorList:Ljava/util/List;
    invoke-static {v1}, Lorg/connectbot/ColorsActivity;->access$0(Lorg/connectbot/ColorsActivity;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lorg/connectbot/util/Colors;->defaults:[Ljava/lang/Integer;

    aget-object v2, v2, v0

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
