.class public final Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;
.super Landroid/app/Activity;


# instance fields
.field public ㅼ꽑嫄:Landroid/app/AlertDialog;

.field private 寃껋씠:Z

.field 弱밧:I

.field 洹:I

.field 癤욱븳援:Landroid/widget/LinearLayout;

.field public 궗:Landroid/webkit/WebView;

.field private 꾨뱾:Landroid/widget/ProgressBar;

.field 대쫫:I

.field private 덉쓣:Landroid/widget/ImageView;

.field private 뚮Ц:Lcom/nbpcorp/mobilead/sdk/k;

.field private final 뚮벏:Ljava/lang/String;

.field private 뚮젮議뚮떎怨:Lcom/nbpcorp/mobilead/sdk/k;

.field private 먮:Lcom/nbpcorp/mobilead/sdk/k;

.field 먯껜蹂대떎:F

.field 먯꽌:Landroid/widget/LinearLayout;

.field 몃Ъ:I

.field private 붿슧:Lcom/nbpcorp/mobilead/sdk/k;

.field 쇰뒗:I

.field private 留먰븷:Lcom/nbpcorp/mobilead/sdk/k;

.field private final 紐낆옱:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v2, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->弱밧:I

    iput v2, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->쇰뒗:I

    iput v2, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->대쫫:I

    iput v2, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->洹:I

    iput v2, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->몃Ъ:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->먯껜蹂대떎:F

    iput-boolean v2, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->寃껋씠:Z

    const-string v0, "\ub354 \ubcf4\uae30"

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->뚮벏:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "URL \ubcf5\uc0ac"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "\ub2e8\ub9d0 \ube0c\ub77c\uc6b0\uc800\ub85c \uc5f4\uae30"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\uc0c8\ub85c \uace0\uce68"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->紐낆옱:[Ljava/lang/String;

    return-void
.end method

.method private ㅼ꽑嫄()V
    .locals 6

    new-instance v0, Lcom/nbpcorp/mobilead/sdk/k;

    sget-object v2, Lrz;->먯껜蹂대떎:Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->洹:I

    iget v5, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->몃Ъ:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/nbpcorp/mobilead/sdk/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->뚮젮議뚮떎怨:Lcom/nbpcorp/mobilead/sdk/k;

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->뚮젮議뚮떎怨:Lcom/nbpcorp/mobilead/sdk/k;

    new-instance v1, Lse;

    invoke-direct {v1, p0}, Lse;-><init>(Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;)V

    invoke-virtual {v0, v1}, Lcom/nbpcorp/mobilead/sdk/k;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->먯꽌:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->뚮젮議뚮떎怨:Lcom/nbpcorp/mobilead/sdk/k;

    iget v2, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->대쫫:I

    iget v3, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->弱밧:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public static synthetic ㅼ꽑嫄(Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->寃껋씠:Z

    return v0
.end method

.method private 弱밧()V
    .locals 4

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->덉쓣:Landroid/widget/ImageView;

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lrz;->뚮Ц:Ljava/lang/String;

    invoke-static {v1}, Lsa;->癤욱븳援(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->덉쓣:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->덉쓣:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->먯꽌:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->덉쓣:Landroid/widget/ImageView;

    const/4 v2, 0x4

    iget v3, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->弱밧:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic 弱밧(Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->紐낆옱:[Ljava/lang/String;

    return-object v0
.end method

.method private 洹()V
    .locals 2

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->뚮Ц:Lcom/nbpcorp/mobilead/sdk/k;

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->궗:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nbpcorp/mobilead/sdk/k;->癤욱븳援(Z)V

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->붿슧:Lcom/nbpcorp/mobilead/sdk/k;

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->궗:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nbpcorp/mobilead/sdk/k;->癤욱븳援(Z)V

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->먮:Lcom/nbpcorp/mobilead/sdk/k;

    iget-boolean v1, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->寃껋씠:Z

    invoke-virtual {v0, v1}, Lcom/nbpcorp/mobilead/sdk/k;->癤욱븳援(Z)V

    return-void
.end method

.method private 癤욱븳援(IF)I
    .locals 2

    int-to-float v0, p1

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static synthetic 癤욱븳援(Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->꾨뱾:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private 癤욱븳援()V
    .locals 6

    new-instance v0, Lcom/nbpcorp/mobilead/sdk/k;

    sget-object v2, Lrz;->ㅼ꽑嫄:Ljava/lang/String;

    sget-object v3, Lrz;->弱밧:Ljava/lang/String;

    iget v4, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->洹:I

    iget v5, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->몃Ъ:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/nbpcorp/mobilead/sdk/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->뚮Ц:Lcom/nbpcorp/mobilead/sdk/k;

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->뚮Ц:Lcom/nbpcorp/mobilead/sdk/k;

    new-instance v1, Lsb;

    invoke-direct {v1, p0}, Lsb;-><init>(Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;)V

    invoke-virtual {v0, v1}, Lcom/nbpcorp/mobilead/sdk/k;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->먯꽌:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->뚮Ц:Lcom/nbpcorp/mobilead/sdk/k;

    iget v2, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->대쫫:I

    iget v3, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->弱밧:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private 癤욱븳援(Landroid/widget/ImageView;IFI)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p2, p3}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->癤욱븳援(IF)I

    move-result v0

    div-int/lit8 v1, p4, 0x2

    add-int/2addr v0, v1

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic 癤욱븳援(Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->寃껋씠:Z

    return-void
.end method

.method private 궗()V
    .locals 6

    new-instance v0, Lcom/nbpcorp/mobilead/sdk/k;

    sget-object v2, Lrz;->쇰뒗:Ljava/lang/String;

    sget-object v3, Lrz;->대쫫:Ljava/lang/String;

    iget v4, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->洹:I

    iget v5, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->몃Ъ:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/nbpcorp/mobilead/sdk/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->붿슧:Lcom/nbpcorp/mobilead/sdk/k;

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->붿슧:Lcom/nbpcorp/mobilead/sdk/k;

    new-instance v1, Lsc;

    invoke-direct {v1, p0}, Lsc;-><init>(Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;)V

    invoke-virtual {v0, v1}, Lcom/nbpcorp/mobilead/sdk/k;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->먯꽌:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->붿슧:Lcom/nbpcorp/mobilead/sdk/k;

    iget v2, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->대쫫:I

    iget v3, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->弱밧:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private 궗(Landroid/widget/ImageView;IFI)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p2, p3}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->癤욱븳援(IF)I

    move-result v0

    add-int/2addr v0, p4

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic 궗(Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->몃Ъ()V

    return-void
.end method

.method private 대쫫()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x3

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x43a0

    div-float/2addr v0, v1

    const/16 v1, 0x3d

    invoke-direct {p0, v1, v0}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->癤욱븳援(IF)I

    move-result v1

    iget v2, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->대쫫:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->뚮Ц:Lcom/nbpcorp/mobilead/sdk/k;

    invoke-direct {p0, v2, v4, v0, v1}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->癤욱븳援(Landroid/widget/ImageView;IFI)V

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->붿슧:Lcom/nbpcorp/mobilead/sdk/k;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->궗(Landroid/widget/ImageView;IFI)V

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->먮:Lcom/nbpcorp/mobilead/sdk/k;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->궗(Landroid/widget/ImageView;IFI)V

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->뚮젮議뚮떎怨:Lcom/nbpcorp/mobilead/sdk/k;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->궗(Landroid/widget/ImageView;IFI)V

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->덉쓣:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v4, v0, v1}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->癤욱븳援(Landroid/widget/ImageView;IFI)V

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->留먰븷:Lcom/nbpcorp/mobilead/sdk/k;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->癤욱븳援(Landroid/widget/ImageView;IFI)V

    return-void
.end method

.method private 먯꽌()V
    .locals 6

    new-instance v0, Lcom/nbpcorp/mobilead/sdk/k;

    sget-object v2, Lrz;->洹:Ljava/lang/String;

    sget-object v3, Lrz;->몃Ъ:Ljava/lang/String;

    iget v4, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->洹:I

    iget v5, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->몃Ъ:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/nbpcorp/mobilead/sdk/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->먮:Lcom/nbpcorp/mobilead/sdk/k;

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->먮:Lcom/nbpcorp/mobilead/sdk/k;

    new-instance v1, Lsd;

    invoke-direct {v1, p0}, Lsd;-><init>(Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;)V

    invoke-virtual {v0, v1}, Lcom/nbpcorp/mobilead/sdk/k;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->먯꽌:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->먮:Lcom/nbpcorp/mobilead/sdk/k;

    iget v2, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->대쫫:I

    iget v3, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->弱밧:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public static synthetic 먯꽌(Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->洹()V

    return-void
.end method

.method private 몃Ъ()V
    .locals 2

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->먮:Lcom/nbpcorp/mobilead/sdk/k;

    iget-boolean v1, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->寃껋씠:Z

    invoke-virtual {v0, v1}, Lcom/nbpcorp/mobilead/sdk/k;->癤욱븳援(Z)V

    return-void
.end method

.method private 쇰뒗()V
    .locals 6

    new-instance v0, Lcom/nbpcorp/mobilead/sdk/k;

    sget-object v2, Lrz;->꾨뱾:Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->洹:I

    iget v5, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->몃Ъ:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/nbpcorp/mobilead/sdk/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->留먰븷:Lcom/nbpcorp/mobilead/sdk/k;

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->留먰븷:Lcom/nbpcorp/mobilead/sdk/k;

    new-instance v1, Lsg;

    invoke-direct {v1, p0}, Lsg;-><init>(Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;)V

    invoke-virtual {v0, v1}, Lcom/nbpcorp/mobilead/sdk/k;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->먯꽌:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->留먰븷:Lcom/nbpcorp/mobilead/sdk/k;

    iget v2, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->대쫫:I

    iget v3, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->弱밧:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->대쫫()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/16 v0, 0x28

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p0, v0, v2}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->癤욱븳援(IF)I

    move-result v0

    iput v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->弱밧:I

    const/4 v0, 0x5

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p0, v0, v2}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->癤욱븳援(IF)I

    move-result v0

    iput v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->쇰뒗:I

    const/16 v0, 0x19

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p0, v0, v2}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->癤욱븳援(IF)I

    move-result v0

    iput v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->洹:I

    const/16 v0, 0x15

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p0, v0, v2}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->癤욱븳援(IF)I

    move-result v0

    iput v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->몃Ъ:I

    const/16 v0, 0x3d

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p0, v0, v2}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->癤욱븳援(IF)I

    move-result v0

    iput v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->대쫫:I

    const/high16 v0, 0x40a0

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->먯껜蹂대떎:F

    invoke-virtual {p0}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->癤욱븳援:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->癤욱븳援:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/ProgressBar;

    const v2, 0x1010078

    invoke-direct {v1, p0, v4, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->꾨뱾:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->꾨뱾:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->꾨뱾:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->癤욱븳援:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->꾨뱾:Landroid/widget/ProgressBar;

    iget v3, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->쇰뒗:I

    invoke-virtual {v1, v2, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->궗:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->궗:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->궗:Landroid/webkit/WebView;

    new-instance v2, Lsi;

    invoke-direct {v2, p0, v4}, Lsi;-><init>(Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;Lsi;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->궗:Landroid/webkit/WebView;

    new-instance v2, Lsh;

    invoke-direct {v2, p0, v4}, Lsh;-><init>(Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;Lsh;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f80

    invoke-direct {v1, v5, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->癤욱븳援:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->궗:Landroid/webkit/WebView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->먯꽌:Landroid/widget/LinearLayout;

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v2, Lrz;->먯꽌:Ljava/lang/String;

    invoke-static {v2}, Lsa;->癤욱븳援(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->먯꽌:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->먯꽌:Landroid/widget/LinearLayout;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-direct {p0}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->癤욱븳援()V

    invoke-direct {p0}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->궗()V

    invoke-direct {p0}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->먯꽌()V

    invoke-direct {p0}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->ㅼ꽑嫄()V

    invoke-direct {p0}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->弱밧()V

    invoke-direct {p0}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->쇰뒗()V

    invoke-direct {p0}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->대쫫()V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->弱밧:I

    invoke-direct {v1, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x50

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->癤욱븳援:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->먯꽌:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->궗:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->癤욱븳援:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->setContentView(Landroid/view/View;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->궗:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->궗:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
