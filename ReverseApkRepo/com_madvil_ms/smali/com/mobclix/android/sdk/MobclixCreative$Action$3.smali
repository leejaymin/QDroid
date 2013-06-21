.class Lcom/mobclix/android/sdk/MobclixCreative$Action$3;
.super Ljava/lang/Object;
.source "MobclixCreative.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixCreative$Action;->overlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative$Action;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    .line 1187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "v"
    .parameter "event"

    .prologue
    const/high16 v13, 0x41a0

    const/high16 v12, 0x4000

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1189
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    iget v8, v8, Lcom/mobclix/android/sdk/MobclixCreative$Action;->cachedImageWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    div-float v3, v8, v12

    .line 1190
    .local v3, maxScrollX:F
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    iget v8, v8, Lcom/mobclix/android/sdk/MobclixCreative$Action;->cachedImageHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    div-float v4, v8, v12

    .line 1191
    .local v4, maxScrollY:F
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v7, v0

    .line 1194
    .local v7, switcherView:Landroid/widget/ImageView;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 1229
    :cond_0
    :goto_0
    return v11

    .line 1197
    :pswitch_0
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    #setter for: Lcom/mobclix/android/sdk/MobclixCreative$Action;->mx:F
    invoke-static {v9, v10}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->access$1(Lcom/mobclix/android/sdk/MobclixCreative$Action;F)V

    #setter for: Lcom/mobclix/android/sdk/MobclixCreative$Action;->startX:F
    invoke-static {v8, v10}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->access$2(Lcom/mobclix/android/sdk/MobclixCreative$Action;F)V

    .line 1198
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    #setter for: Lcom/mobclix/android/sdk/MobclixCreative$Action;->my:F
    invoke-static {v9, v10}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->access$3(Lcom/mobclix/android/sdk/MobclixCreative$Action;F)V

    #setter for: Lcom/mobclix/android/sdk/MobclixCreative$Action;->startY:F
    invoke-static {v8, v10}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->access$4(Lcom/mobclix/android/sdk/MobclixCreative$Action;F)V

    goto :goto_0

    .line 1201
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1202
    .local v1, curX:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1203
    .local v2, curY:F
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$Action;->mx:F
    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->access$5(Lcom/mobclix/android/sdk/MobclixCreative$Action;)F

    move-result v8

    sub-float v5, v8, v1

    .line 1204
    .local v5, scrollByX:F
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$Action;->my:F
    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->access$6(Lcom/mobclix/android/sdk/MobclixCreative$Action;)F

    move-result v8

    sub-float v6, v8, v2

    .line 1205
    .local v6, scrollByY:F
    cmpl-float v8, v3, v10

    if-lez v8, :cond_2

    .line 1206
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$Action;->scrolledX:F
    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->access$7(Lcom/mobclix/android/sdk/MobclixCreative$Action;)F

    move-result v9

    add-float/2addr v9, v5

    #setter for: Lcom/mobclix/android/sdk/MobclixCreative$Action;->scrolledX:F
    invoke-static {v8, v9}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->access$8(Lcom/mobclix/android/sdk/MobclixCreative$Action;F)V

    .line 1207
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$Action;->scrolledX:F
    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->access$7(Lcom/mobclix/android/sdk/MobclixCreative$Action;)F

    move-result v8

    cmpl-float v8, v8, v3

    if-gtz v8, :cond_1

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$Action;->scrolledX:F
    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->access$7(Lcom/mobclix/android/sdk/MobclixCreative$Action;)F

    move-result v8

    neg-float v8, v8

    cmpl-float v8, v8, v3

    if-lez v8, :cond_6

    .line 1208
    :cond_1
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$Action;->scrolledX:F
    invoke-static {v9}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->access$7(Lcom/mobclix/android/sdk/MobclixCreative$Action;)F

    move-result v9

    cmpl-float v9, v9, v3

    if-lez v9, :cond_5

    move v9, v3

    :goto_1
    #setter for: Lcom/mobclix/android/sdk/MobclixCreative$Action;->scrolledX:F
    invoke-static {v8, v9}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->access$8(Lcom/mobclix/android/sdk/MobclixCreative$Action;F)V

    .line 1209
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$Action;->scrolledX:F
    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->access$7(Lcom/mobclix/android/sdk/MobclixCreative$Action;)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v7}, Landroid/widget/ImageView;->getScrollY()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/ImageView;->scrollTo(II)V

    .line 1212
    :cond_2
    :goto_2
    cmpl-float v8, v4, v10

    if-lez v8, :cond_4

    .line 1213
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$Action;->scrolledY:F
    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->access$9(Lcom/mobclix/android/sdk/MobclixCreative$Action;)F

    move-result v9

    add-float/2addr v9, v6

    #setter for: Lcom/mobclix/android/sdk/MobclixCreative$Action;->scrolledY:F
    invoke-static {v8, v9}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->access$10(Lcom/mobclix/android/sdk/MobclixCreative$Action;F)V

    .line 1214
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$Action;->scrolledY:F
    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->access$9(Lcom/mobclix/android/sdk/MobclixCreative$Action;)F

    move-result v8

    cmpl-float v8, v8, v4

    if-gtz v8, :cond_3

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$Action;->scrolledY:F
    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->access$9(Lcom/mobclix/android/sdk/MobclixCreative$Action;)F

    move-result v8

    neg-float v8, v8

    cmpl-float v8, v8, v4

    if-lez v8, :cond_8

    .line 1215
    :cond_3
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$Action;->scrolledY:F
    invoke-static {v9}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->access$9(Lcom/mobclix/android/sdk/MobclixCreative$Action;)F

    move-result v9

    cmpl-float v9, v9, v4

    if-lez v9, :cond_7

    move v9, v4

    :goto_3
    #setter for: Lcom/mobclix/android/sdk/MobclixCreative$Action;->scrolledY:F
    invoke-static {v8, v9}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->access$10(Lcom/mobclix/android/sdk/MobclixCreative$Action;F)V

    .line 1216
    invoke-virtual {v7}, Landroid/widget/ImageView;->getScrollX()I

    move-result v8

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$Action;->scrolledY:F
    invoke-static {v9}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->access$9(Lcom/mobclix/android/sdk/MobclixCreative$Action;)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/ImageView;->scrollTo(II)V

    .line 1219
    :cond_4
    :goto_4
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    #setter for: Lcom/mobclix/android/sdk/MobclixCreative$Action;->mx:F
    invoke-static {v8, v1}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->access$1(Lcom/mobclix/android/sdk/MobclixCreative$Action;F)V

    .line 1220
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    #setter for: Lcom/mobclix/android/sdk/MobclixCreative$Action;->my:F
    invoke-static {v8, v2}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->access$3(Lcom/mobclix/android/sdk/MobclixCreative$Action;F)V

    goto/16 :goto_0

    .line 1208
    :cond_5
    neg-float v9, v3

    goto :goto_1

    .line 1210
    :cond_6
    float-to-int v8, v5

    invoke-virtual {v7, v8, v11}, Landroid/widget/ImageView;->scrollBy(II)V

    goto :goto_2

    .line 1215
    :cond_7
    neg-float v9, v4

    goto :goto_3

    .line 1217
    :cond_8
    float-to-int v8, v6

    invoke-virtual {v7, v11, v8}, Landroid/widget/ImageView;->scrollBy(II)V

    goto :goto_4

    .line 1223
    .end local v1           #curX:F
    .end local v2           #curY:F
    .end local v5           #scrollByX:F
    .end local v6           #scrollByY:F
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1224
    .restart local v1       #curX:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1225
    .restart local v2       #curY:F
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$Action;->startX:F
    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->access$11(Lcom/mobclix/android/sdk/MobclixCreative$Action;)F

    move-result v8

    sub-float v8, v1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v8, v8, v13

    if-gez v8, :cond_0

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$Action;->startY:F
    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->access$12(Lcom/mobclix/android/sdk/MobclixCreative$Action;)F

    move-result v8

    sub-float v8, v2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v8, v8, v13

    if-gez v8, :cond_0

    .line 1226
    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->loadUrl()V

    goto/16 :goto_0

    .line 1194
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
