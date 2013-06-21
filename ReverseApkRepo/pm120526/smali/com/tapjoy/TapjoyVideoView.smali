.class public Lcom/tapjoy/TapjoyVideoView;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field private static B:Z

.field private static C:Z

.field private static D:Lcom/tapjoy/bp;

.field private static Q:Ljava/lang/String;

.field private static R:Ljava/lang/String;

.field static f:I

.field static g:I

.field static h:I

.field static final i:[I

.field static final j:[I

.field static final k:[I

.field static final l:[F

.field static final m:[F

.field static final n:Landroid/graphics/RectF;

.field static final o:[F


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:I

.field private I:I

.field private J:Landroid/widget/ImageView;

.field private K:Landroid/widget/ImageView;

.field private L:Landroid/graphics/Bitmap;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field a:Landroid/app/Dialog;

.field b:Ljava/util/Timer;

.field c:I

.field final d:Ljava/lang/String;

.field final e:Landroid/os/Handler;

.field final p:Ljava/lang/Runnable;

.field private q:Landroid/widget/VideoView;

.field private r:Ljava/lang/String;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/Button;

.field private w:Landroid/widget/Button;

.field private x:Landroid/widget/Button;

.field private y:Landroid/widget/Button;

.field private z:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x2

    const/high16 v1, 0x40c0

    sput-boolean v0, Lcom/tapjoy/TapjoyVideoView;->B:Z

    sput-boolean v0, Lcom/tapjoy/TapjoyVideoView;->C:Z

    const-string v0, "\"4\""

    sput-object v0, Lcom/tapjoy/TapjoyVideoView;->Q:Ljava/lang/String;

    const-string v0, "\"3\""

    sput-object v0, Lcom/tapjoy/TapjoyVideoView;->R:Ljava/lang/String;

    const/16 v0, 0x10

    sput v0, Lcom/tapjoy/TapjoyVideoView;->f:I

    const/16 v0, 0xa

    sput v0, Lcom/tapjoy/TapjoyVideoView;->g:I

    const/4 v0, -0x1

    sput v0, Lcom/tapjoy/TapjoyVideoView;->h:I

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tapjoy/TapjoyVideoView;->i:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/tapjoy/TapjoyVideoView;->j:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/tapjoy/TapjoyVideoView;->k:[I

    new-array v0, v3, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/tapjoy/TapjoyVideoView;->l:[F

    new-array v0, v3, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/tapjoy/TapjoyVideoView;->m:[F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/tapjoy/TapjoyVideoView;->n:Landroid/graphics/RectF;

    new-array v0, v3, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/tapjoy/TapjoyVideoView;->o:[F

    return-void

    nop

    :array_0
    .array-data 0x4
        0x8at 0x8at 0x8at 0xfft
        0x44t 0x44t 0x44t 0xfft
    .end array-data

    :array_1
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xe8t 0xe8t 0xe8t 0xfft
    .end array-data

    :array_2
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xe8t 0xe8t 0xe8t 0xfft
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->q:Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->s:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->t:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->u:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->v:Landroid/widget/Button;

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->w:Landroid/widget/Button;

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->x:Landroid/widget/Button;

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->y:Landroid/widget/Button;

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->b:Ljava/util/Timer;

    iput-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->E:Z

    iput-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->F:Z

    iput-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->G:Z

    iput v1, p0, Lcom/tapjoy/TapjoyVideoView;->H:I

    iput v1, p0, Lcom/tapjoy/TapjoyVideoView;->I:I

    const-string v0, "VIDEO"

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->d:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/os/Handler;

    new-instance v0, Lcom/tapjoy/bq;

    invoke-direct {v0, p0}, Lcom/tapjoy/bq;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->p:Ljava/lang/Runnable;

    return-void
.end method

.method private static a([I)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, v0, p0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    sget-object v0, Lcom/tapjoy/TapjoyVideoView;->l:[F

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    const/high16 v0, 0x4248

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    return-object v1
.end method

.method private a(Ljava/lang/String;)Landroid/widget/Button;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    sget-object v0, Lcom/tapjoy/TapjoyVideoView;->k:[I

    invoke-static {v0}, Lcom/tapjoy/TapjoyVideoView;->a([I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/TapjoyVideoView;->k:[I

    invoke-static {v1}, Lcom/tapjoy/TapjoyVideoView;->a([I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyVideoView;->k:[I

    invoke-static {v2}, Lcom/tapjoy/TapjoyVideoView;->a([I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v4, v7, [I

    const/4 v5, 0x0

    const v6, 0x10100a7

    aput v6, v4, v5

    invoke-virtual {v3, v4, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v0, v8, [I

    fill-array-data v0, :array_0

    invoke-virtual {v3, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v0, v8, [I

    fill-array-data v0, :array_1

    invoke-virtual {v3, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v1, -0xfcc36e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    sget v1, Lcom/tapjoy/TapjoyVideoView;->f:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    const-string v1, "default"

    invoke-static {v1, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    sget v1, Lcom/tapjoy/TapjoyVideoView;->h:I

    if-lez v1, :cond_0

    sget v1, Lcom/tapjoy/TapjoyVideoView;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHeight(I)V

    :cond_0
    const-string v1, "VIDEO"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "padding bottom: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "VIDEO"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "padding top: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingTop()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "VIDEO"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "padding left: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "VIDEO"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "padding right: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingRight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    return-object v0

    nop

    :array_0
    .array-data 0x4
        0x64t 0xfft 0xfet 0xfet
        0x5ft 0xfft 0xfet 0xfet
    .end array-data

    :array_1
    .array-data 0x4
        0x64t 0xfft 0xfet 0xfet
        0xa1t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method static synthetic a(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a()Lcom/tapjoy/bp;
    .locals 1

    sget-object v0, Lcom/tapjoy/TapjoyVideoView;->D:Lcom/tapjoy/bp;

    return-object v0
.end method

.method static synthetic a(Lcom/tapjoy/TapjoyVideoView;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TapjoyVideoView;->L:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic b(Lcom/tapjoy/TapjoyVideoView;)I
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->q:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->q:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private b()V
    .locals 7

    const/16 v6, 0xc

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x2

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->z:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->q:Landroid/widget/VideoView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->s:Landroid/widget/TextView;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->K:Landroid/widget/ImageView;

    sget-object v0, Lcom/tapjoy/bn;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->K:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->K:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/VideoView;

    invoke-direct {v0, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->q:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->q:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->q:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->q:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    sget-boolean v0, Lcom/tapjoy/TapjoyVideoView;->C:Z

    if-eqz v0, :cond_3

    const-string v0, "VIDEO"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "streaming video: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->q:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->q:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->q:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/tapjoy/TapjoyVideoView;->H:I

    const-string v0, "VIDEO"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "videoView.getDuration(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->q:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VIDEO"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "timeRemaining: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tapjoy/TapjoyVideoView;->H:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->s:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->s:Landroid/widget/TextView;

    sget v1, Lcom/tapjoy/TapjoyVideoView;->f:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->s:Landroid/widget/TextView;

    const-string v1, "default"

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->s:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->q:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    iget-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->E:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->q:Landroid/widget/VideoView;

    iget v1, p0, Lcom/tapjoy/TapjoyVideoView;->I:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    const-string v0, "VIDEO"

    const-string v1, "dialog is showing -- don\'t start"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->b:Ljava/util/Timer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->b:Ljava/util/Timer;

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->b:Ljava/util/Timer;

    new-instance v1, Lcom/tapjoy/cb;

    invoke-direct {v1, p0, v4}, Lcom/tapjoy/cb;-><init>(Lcom/tapjoy/TapjoyVideoView;B)V

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/by;

    invoke-direct {v1, p0}, Lcom/tapjoy/by;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->z:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->q:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->z:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->z:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_3
    const-string v0, "VIDEO"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cached video: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->q:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "VIDEO"

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->q:Landroid/widget/VideoView;

    invoke-virtual {v0, v4}, Landroid/widget/VideoView;->seekTo(I)V

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->q:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto :goto_1
.end method

.method static synthetic c(Lcom/tapjoy/TapjoyVideoView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->P:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->z:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v3, Lcom/tapjoy/TapjoyVideoView;->i:[I

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->z:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic d(Lcom/tapjoy/TapjoyVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->b()V

    return-void
.end method

.method static synthetic e(Lcom/tapjoy/TapjoyVideoView;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->F:Z

    return-void
.end method

.method static synthetic f(Lcom/tapjoy/TapjoyVideoView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->F:Z

    return v0
.end method

.method static synthetic g(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->q:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic h(Lcom/tapjoy/TapjoyVideoView;)I
    .locals 1

    iget v0, p0, Lcom/tapjoy/TapjoyVideoView;->I:I

    return v0
.end method

.method static synthetic i(Lcom/tapjoy/TapjoyVideoView;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->E:Z

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 13

    const-string v0, "VIDEO"

    const-string v1, "onCompletion"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyVideoView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    const-string v3, "VIDEO"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "view dimensions: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_1

    new-instance v3, Lcom/tapjoy/bc;

    invoke-direct {v3, p0}, Lcom/tapjoy/bc;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/tapjoy/bc;->b()I

    move-result v3

    iput v3, p0, Lcom/tapjoy/TapjoyVideoView;->c:I

    const-string v3, "VIDEO"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "deviceScreenLayoutSize: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/tapjoy/TapjoyVideoView;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/tapjoy/TapjoyVideoView;->c:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    const/16 v3, 0x14

    sput v3, Lcom/tapjoy/TapjoyVideoView;->g:I

    const/16 v3, 0x20

    sput v3, Lcom/tapjoy/TapjoyVideoView;->f:I

    div-int/lit8 v3, v2, 0x7

    sput v3, Lcom/tapjoy/TapjoyVideoView;->h:I

    const-string v3, "\"10\""

    sput-object v3, Lcom/tapjoy/TapjoyVideoView;->Q:Ljava/lang/String;

    const-string v3, "\"6\""

    sput-object v3, Lcom/tapjoy/TapjoyVideoView;->R:Ljava/lang/String;

    const-string v3, "VIDEO"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "buttonHeight: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/tapjoy/TapjoyVideoView;->h:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    div-int/lit8 v2, v2, 0x3

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sget v3, Lcom/tapjoy/TapjoyVideoView;->g:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tapjoy/TapjoyVideoView;->A:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/tapjoy/TapjoyVideoView;->A:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v4, Lcom/tapjoy/TapjoyVideoView;->g:I

    sget v5, Lcom/tapjoy/TapjoyVideoView;->g:I

    sget v6, Lcom/tapjoy/TapjoyVideoView;->g:I

    sget v7, Lcom/tapjoy/TapjoyVideoView;->g:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tapjoy/TapjoyVideoView;->t:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tapjoy/TapjoyVideoView;->t:Landroid/widget/TextView;

    const-string v4, "Details"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/tapjoy/TapjoyVideoView;->t:Landroid/widget/TextView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/tapjoy/TapjoyVideoView;->t:Landroid/widget/TextView;

    sget v4, Lcom/tapjoy/TapjoyVideoView;->f:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, p0, Lcom/tapjoy/TapjoyVideoView;->t:Landroid/widget/TextView;

    const-string v4, "default"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v3, p0, Lcom/tapjoy/TapjoyVideoView;->t:Landroid/widget/TextView;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, -0x100

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v4, Lcom/tapjoy/TapjoyVideoView;->g:I

    sget v5, Lcom/tapjoy/TapjoyVideoView;->g:I

    sget v6, Lcom/tapjoy/TapjoyVideoView;->g:I

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->t:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/tapjoy/TapjoyVideoView;->t:Landroid/widget/TextView;

    const/16 v4, 0x83f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    :try_start_0
    sget-object v3, Lcom/tapjoy/bn;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    iget-object v3, p0, Lcom/tapjoy/TapjoyVideoView;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tapjoy/TapjoyVideoView;->J:Landroid/widget/ImageView;

    :try_start_1
    iget-object v3, p0, Lcom/tapjoy/TapjoyVideoView;->L:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/tapjoy/TapjoyVideoView;->L:Landroid/graphics/Bitmap;

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-direct {v6, v8}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v8, -0x1

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v8, Landroid/graphics/RectF;

    const/4 v9, 0x0

    const/4 v10, 0x0

    int-to-float v11, v4

    int-to-float v12, v5

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v9, 0x41c8

    const/high16 v10, 0x41c8

    invoke-virtual {v7, v8, v9, v10, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v3, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    mul-int v3, v4, v2

    div-int/2addr v3, v5

    const/4 v4, 0x1

    invoke-static {v6, v3, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->J:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/tapjoy/TapjoyVideoView;->J:Landroid/widget/ImageView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/ImageView;->setPadding(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_2
    new-instance v3, Landroid/webkit/WebView;

    invoke-direct {v3, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<html><body><font face=\"helvetica\" color=\"black\" size="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/tapjoy/TapjoyVideoView;->Q:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "><p>You just earned <font color=#004194><b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->M:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</b></font> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->N:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "! <br /> <font color=#909090 size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/tapjoy/TapjoyVideoView;->R:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "><b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->O:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</b></p></font></font></body></html>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/html"

    const-string v6, "utf-8"

    invoke-virtual {v3, v4, v5, v6}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget v3, Lcom/tapjoy/TapjoyVideoView;->g:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sget v5, Lcom/tapjoy/TapjoyVideoView;->g:I

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    sget v6, Lcom/tapjoy/TapjoyVideoView;->g:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v1, v6

    invoke-direct {v5, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v2, Lcom/tapjoy/TapjoyVideoView;->g:I

    sget v6, Lcom/tapjoy/TapjoyVideoView;->g:I

    sget v7, Lcom/tapjoy/TapjoyVideoView;->g:I

    sget v8, Lcom/tapjoy/TapjoyVideoView;->g:I

    invoke-virtual {v5, v2, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v2, 0x0

    sget v5, Lcom/tapjoy/TapjoyVideoView;->g:I

    mul-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    sget v7, Lcom/tapjoy/TapjoyVideoView;->g:I

    mul-int/lit8 v7, v7, 0x2

    invoke-virtual {v3, v2, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    sget-object v2, Lcom/tapjoy/TapjoyVideoView;->j:[I

    invoke-static {v2}, Lcom/tapjoy/TapjoyVideoView;->a([I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x13

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->J:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->u:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->u:Landroid/widget/TextView;

    const-string v4, "What now?"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->u:Landroid/widget/TextView;

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->u:Landroid/widget/TextView;

    sget v4, Lcom/tapjoy/TapjoyVideoView;->f:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->u:Landroid/widget/TextView;

    const-string v4, "default"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->u:Landroid/widget/TextView;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, -0x100

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v4, Lcom/tapjoy/TapjoyVideoView;->g:I

    sget v5, Lcom/tapjoy/TapjoyVideoView;->g:I

    sget v6, Lcom/tapjoy/TapjoyVideoView;->g:I

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->u:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->u:Landroid/widget/TextView;

    const/16 v4, 0xc28

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setId(I)V

    const-string v2, "Replay this video"

    invoke-direct {p0, v2}, Lcom/tapjoy/TapjoyVideoView;->a(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->v:Landroid/widget/Button;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v4, Lcom/tapjoy/TapjoyVideoView;->g:I

    sget v5, Lcom/tapjoy/TapjoyVideoView;->g:I

    sget v6, Lcom/tapjoy/TapjoyVideoView;->g:I

    sget v7, Lcom/tapjoy/TapjoyVideoView;->g:I

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->v:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->v:Landroid/widget/Button;

    const/16 v4, 0x459

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setId(I)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->v:Landroid/widget/Button;

    new-instance v4, Lcom/tapjoy/bu;

    invoke-direct {v4, p0}, Lcom/tapjoy/bu;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "VIDEO"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "button dimensions: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->v:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->v:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "View More Offers"

    invoke-direct {p0, v2}, Lcom/tapjoy/TapjoyVideoView;->a(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->w:Landroid/widget/Button;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v4, Lcom/tapjoy/TapjoyVideoView;->g:I

    sget v5, Lcom/tapjoy/TapjoyVideoView;->g:I

    sget v6, Lcom/tapjoy/TapjoyVideoView;->g:I

    sget v7, Lcom/tapjoy/TapjoyVideoView;->g:I

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->w:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->w:Landroid/widget/Button;

    new-instance v4, Lcom/tapjoy/bv;

    invoke-direct {v4, p0}, Lcom/tapjoy/bv;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->v:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->w:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v4, "VIDEO"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "linear width: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->A:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->t:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/tapjoy/TapjoyVideoView;->A:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->u:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/tapjoy/TapjoyVideoView;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget-object v2, Lcom/tapjoy/TapjoyVideoView;->D:Lcom/tapjoy/bp;

    iget v2, v2, Lcom/tapjoy/bp;->j:I

    if-lez v2, :cond_4

    sget-object v2, Lcom/tapjoy/TapjoyVideoView;->D:Lcom/tapjoy/bp;

    iget-object v2, v2, Lcom/tapjoy/bp;->i:[[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/tapjoy/TapjoyVideoView;->a(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->x:Landroid/widget/Button;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v3, Lcom/tapjoy/TapjoyVideoView;->g:I

    sget v4, Lcom/tapjoy/TapjoyVideoView;->g:I

    sget v5, Lcom/tapjoy/TapjoyVideoView;->g:I

    sget v6, Lcom/tapjoy/TapjoyVideoView;->g:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/tapjoy/TapjoyVideoView;->x:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/tapjoy/TapjoyVideoView;->x:Landroid/widget/Button;

    new-instance v4, Lcom/tapjoy/bw;

    invoke-direct {v4, p0}, Lcom/tapjoy/bw;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v3, Lcom/tapjoy/TapjoyVideoView;->D:Lcom/tapjoy/bp;

    iget v3, v3, Lcom/tapjoy/bp;->j:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_7

    sget-object v3, Lcom/tapjoy/TapjoyVideoView;->D:Lcom/tapjoy/bp;

    iget-object v3, v3, Lcom/tapjoy/bp;->i:[[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-direct {p0, v3}, Lcom/tapjoy/TapjoyVideoView;->a(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/tapjoy/TapjoyVideoView;->y:Landroid/widget/Button;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v0, Lcom/tapjoy/TapjoyVideoView;->g:I

    sget v4, Lcom/tapjoy/TapjoyVideoView;->g:I

    sget v5, Lcom/tapjoy/TapjoyVideoView;->g:I

    sget v6, Lcom/tapjoy/TapjoyVideoView;->g:I

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->y:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->y:Landroid/widget/Button;

    new-instance v2, Lcom/tapjoy/bx;

    invoke-direct {v2, p0}, Lcom/tapjoy/bx;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->x:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->y:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_4
    :goto_3
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->c()V

    sget-boolean v0, Lcom/tapjoy/TapjoyVideoView;->B:Z

    if-nez v0, :cond_5

    invoke-static {}, Lcom/tapjoy/bn;->c()Lcom/tapjoy/bo;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/bz;

    invoke-direct {v1, p0}, Lcom/tapjoy/bz;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_5
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tapjoy/TapjoyVideoView;->B:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->G:Z

    return-void

    :catch_0
    move-exception v3

    const-string v4, "VIDEO"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "error decoding background image: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    :try_start_2
    sget-object v3, Lcom/tapjoy/bn;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    goto/16 :goto_1

    :catch_1
    move-exception v3

    const-string v4, "VIDEO"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "error decoding thumbnail image: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->A:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->x:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    const-string v0, "VIDEO"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "VIDEO"

    const-string v1, "*** Loading saved data from bundle ***"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "seek_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tapjoy/TapjoyVideoView;->I:I

    const-string v0, "dialog_showing"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->E:Z

    :cond_0
    const-string v0, "VIDEO"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dialogShowing: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tapjoy/TapjoyVideoView;->E:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", seekTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tapjoy/TapjoyVideoView;->I:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tapjoy/TapjoyVideoView;->C:Z

    invoke-static {}, Lcom/tapjoy/bn;->a()Lcom/tapjoy/bn;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyVideoView;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tapjoy/bn;->a()Lcom/tapjoy/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/bn;->b()Lcom/tapjoy/bp;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyVideoView;->D:Lcom/tapjoy/bp;

    sget-object v0, Lcom/tapjoy/TapjoyVideoView;->D:Lcom/tapjoy/bp;

    iget-object v0, v0, Lcom/tapjoy/bp;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->r:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "VIDEO"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no cached video, try streaming video at location: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/TapjoyVideoView;->D:Lcom/tapjoy/bp;

    iget-object v2, v2, Lcom/tapjoy/bp;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tapjoy/TapjoyVideoView;->D:Lcom/tapjoy/bp;

    iget-object v0, v0, Lcom/tapjoy/bp;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->r:Ljava/lang/String;

    sput-boolean v4, Lcom/tapjoy/TapjoyVideoView;->C:Z

    :cond_3
    sget-object v0, Lcom/tapjoy/TapjoyVideoView;->D:Lcom/tapjoy/bp;

    iget-object v0, v0, Lcom/tapjoy/bp;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->M:Ljava/lang/String;

    sget-object v0, Lcom/tapjoy/TapjoyVideoView;->D:Lcom/tapjoy/bp;

    iget-object v0, v0, Lcom/tapjoy/bp;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->N:Ljava/lang/String;

    sget-object v0, Lcom/tapjoy/TapjoyVideoView;->D:Lcom/tapjoy/bp;

    iget-object v0, v0, Lcom/tapjoy/bp;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->O:Ljava/lang/String;

    sget-object v0, Lcom/tapjoy/TapjoyVideoView;->D:Lcom/tapjoy/bp;

    iget-object v0, v0, Lcom/tapjoy/bp;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->P:Ljava/lang/String;

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->P:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->P:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/bt;

    invoke-direct {v1, p0}, Lcom/tapjoy/bt;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_4
    const-string v0, "VIDEO"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "videoPath: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Lcom/tapjoy/TapjoyVideoView;->requestWindowFeature(I)Z

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->z:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyVideoView;->setContentView(Landroid/view/View;)V

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_5

    new-instance v0, Lcom/tapjoy/bc;

    invoke-direct {v0, p0}, Lcom/tapjoy/bc;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tapjoy/bc;->b()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/TapjoyVideoView;->c:I

    const-string v0, "VIDEO"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deviceScreenLayoutSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tapjoy/TapjoyVideoView;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/tapjoy/TapjoyVideoView;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyVideoView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    const-string v2, "VIDEO"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "width: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", height: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x14

    sput v1, Lcom/tapjoy/TapjoyVideoView;->g:I

    const/16 v1, 0x20

    sput v1, Lcom/tapjoy/TapjoyVideoView;->f:I

    div-int/lit8 v0, v0, 0x7

    sput v0, Lcom/tapjoy/TapjoyVideoView;->h:I

    const-string v0, "\"10\""

    sput-object v0, Lcom/tapjoy/TapjoyVideoView;->Q:Ljava/lang/String;

    const-string v0, "\"6\""

    sput-object v0, Lcom/tapjoy/TapjoyVideoView;->R:Ljava/lang/String;

    const-string v0, "VIDEO"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "buttonHeight: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/tapjoy/TapjoyVideoView;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v0, "VIDEO"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/tapjoy/TapjoyVideoView;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VIDEO"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "textSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/tapjoy/TapjoyVideoView;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->b()V

    const-string v0, "VIDEO"

    const-string v1, "onCreate DONE"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    const-string v0, "VIDEO"

    const-string v1, "dialog onCreateDialog"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->E:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->a:Landroid/app/Dialog;

    :goto_0
    return-object v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->a:Landroid/app/Dialog;

    :goto_1
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->a:Landroid/app/Dialog;

    goto :goto_0

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Cancel Video?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Currency will not be awarded, are you sure you want to cancel the video?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "End"

    new-instance v2, Lcom/tapjoy/ca;

    invoke-direct {v2, p0}, Lcom/tapjoy/ca;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Resume"

    new-instance v2, Lcom/tapjoy/br;

    invoke-direct {v2, p0}, Lcom/tapjoy/br;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->a:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->a:Landroid/app/Dialog;

    new-instance v1, Lcom/tapjoy/bs;

    invoke-direct {v1, p0}, Lcom/tapjoy/bs;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->E:Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    const/4 v2, 0x1

    sput-boolean v2, Lcom/tapjoy/TapjoyVideoView;->B:Z

    const-string v0, "VIDEO"

    const-string v1, "onError"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/bn;->c()Lcom/tapjoy/bo;

    iput-boolean v2, p0, Lcom/tapjoy/TapjoyVideoView;->G:Z

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->G:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->q:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/TapjoyVideoView;->I:I

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->q:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    iput-boolean v4, p0, Lcom/tapjoy/TapjoyVideoView;->E:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyVideoView;->showDialog(I)V

    const-string v0, "VIDEO"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PAUSE VIDEO time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tapjoy/TapjoyVideoView;->I:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VIDEO"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "currentPosition: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->q:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VIDEO"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "duration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->q:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", elapsed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->q:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

    iget-object v3, p0, Lcom/tapjoy/TapjoyVideoView;->q:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->q:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->q:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->c()V

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->b:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->q:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VIDEO"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->q:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/TapjoyVideoView;->I:I

    const-string v0, "VIDEO"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "seekTime: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tapjoy/TapjoyVideoView;->I:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    const-string v0, "VIDEO"

    const-string v1, "onPrepared"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    const-string v0, "VIDEO"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyVideoView;->setRequestedOrientation(I)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget v0, p0, Lcom/tapjoy/TapjoyVideoView;->I:I

    if-lez v0, :cond_1

    const-string v0, "VIDEO"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "seekTime: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tapjoy/TapjoyVideoView;->I:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->q:Landroid/widget/VideoView;

    iget v1, p0, Lcom/tapjoy/TapjoyVideoView;->I:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    iget-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->q:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "VIDEO"

    const-string v1, "*** onSaveInstanceState ***"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VIDEO"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dialogShowing: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tapjoy/TapjoyVideoView;->E:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", seekTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tapjoy/TapjoyVideoView;->I:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dialog_showing"

    iget-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->E:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "seek_time"

    iget v1, p0, Lcom/tapjoy/TapjoyVideoView;->I:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    const-string v0, "VIDEO"

    const-string v1, "onWindowFocusChanged"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method
