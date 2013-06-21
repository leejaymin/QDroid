.class Lcom/wooboo/adlib_android/ImpressionAdView$2$1;
.super Ljava/lang/Object;
.source "ImpressionAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wooboo/adlib_android/ImpressionAdView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wooboo/adlib_android/ImpressionAdView$2;

.field private final synthetic val$newAdContainer:Lcom/wooboo/adlib_android/_;


# direct methods
.method constructor <init>(Lcom/wooboo/adlib_android/ImpressionAdView$2;Lcom/wooboo/adlib_android/_;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wooboo/adlib_android/ImpressionAdView$2$1;->this$1:Lcom/wooboo/adlib_android/ImpressionAdView$2;

    iput-object p2, p0, Lcom/wooboo/adlib_android/ImpressionAdView$2$1;->val$newAdContainer:Lcom/wooboo/adlib_android/_;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v5, -0x2

    .line 274
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->close()V

    .line 275
    iget-object v3, p0, Lcom/wooboo/adlib_android/ImpressionAdView$2$1;->val$newAdContainer:Lcom/wooboo/adlib_android/_;

    invoke-virtual {v3}, Lcom/wooboo/adlib_android/_;->startGIFShow()V

    .line 276
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 277
    const/4 v3, -0x1

    .line 276
    invoke-direct {v1, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 280
    .local v1, cFrame:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/wooboo/adlib_android/ImpressionAdView$2$1;->val$newAdContainer:Lcom/wooboo/adlib_android/_;

    invoke-virtual {v3, v1}, Lcom/wooboo/adlib_android/_;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    new-instance v3, Landroid/widget/RelativeLayout;

    #calls: Lcom/wooboo/adlib_android/ImpressionAdView;->getContext()Landroid/content/Context;
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->access$2()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, Lcom/wooboo/adlib_android/ImpressionAdView;->access$7(Landroid/widget/RelativeLayout;)V

    .line 283
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->access$8()Landroid/widget/RelativeLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/wooboo/adlib_android/ImpressionAdView$2$1;->val$newAdContainer:Lcom/wooboo/adlib_android/_;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 284
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 287
    .local v0, buttonParams:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v3, Landroid/widget/ImageButton;

    #calls: Lcom/wooboo/adlib_android/ImpressionAdView;->getContext()Landroid/content/Context;
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->access$2()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, Lcom/wooboo/adlib_android/ImpressionAdView;->access$9(Landroid/widget/ImageButton;)V

    .line 289
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 290
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->access$10()Landroid/widget/ImageButton;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setId(I)V

    .line 291
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->access$10()Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    :try_start_0
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->access$10()Landroid/widget/ImageButton;

    move-result-object v3

    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->access$11()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 298
    :goto_0
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->access$10()Landroid/widget/ImageButton;

    move-result-object v3

    .line 299
    new-instance v4, Lcom/wooboo/adlib_android/ImpressionAdView$2$1$1;

    invoke-direct {v4, p0}, Lcom/wooboo/adlib_android/ImpressionAdView$2$1$1;-><init>(Lcom/wooboo/adlib_android/ImpressionAdView$2$1;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->access$8()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->access$10()Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    :try_start_1
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->access$1()Lcom/wooboo/adlib_android/ImpressionAdView;

    move-result-object v3

    .line 310
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->access$8()Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wooboo/adlib_android/ImpressionAdView;->setContentView(Landroid/view/View;)V

    .line 311
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->access$1()Lcom/wooboo/adlib_android/ImpressionAdView;

    move-result-object v3

    .line 312
    #calls: Lcom/wooboo/adlib_android/ImpressionAdView;->getParentView()Landroid/view/View;
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->access$0()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    .line 313
    #calls: Lcom/wooboo/adlib_android/ImpressionAdView;->getX_location()I
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->access$12()I

    move-result v6

    .line 314
    #calls: Lcom/wooboo/adlib_android/ImpressionAdView;->getY_location()I
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->access$13()I

    move-result v7

    .line 311
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/wooboo/adlib_android/ImpressionAdView;->showAtLocation(Landroid/view/View;III)V

    .line 315
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->access$1()Lcom/wooboo/adlib_android/ImpressionAdView;

    move-result-object v3

    .line 316
    #calls: Lcom/wooboo/adlib_android/ImpressionAdView;->getX_location()I
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->access$12()I

    move-result v4

    .line 317
    #calls: Lcom/wooboo/adlib_android/ImpressionAdView;->getY_location()I
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->access$13()I

    move-result v5

    #calls: Lcom/wooboo/adlib_android/ImpressionAdView;->getWh()I
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->access$4()I

    move-result v6

    .line 318
    #calls: Lcom/wooboo/adlib_android/ImpressionAdView;->getHt()I
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->access$5()I

    move-result v7

    .line 315
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/wooboo/adlib_android/ImpressionAdView;->update(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 324
    :goto_1
    return-void

    .line 319
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 321
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "Wooboo SDK"

    .line 322
    const-string v4, "Can not display an impressionAdView,please check params."

    .line 321
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 295
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_0
.end method
