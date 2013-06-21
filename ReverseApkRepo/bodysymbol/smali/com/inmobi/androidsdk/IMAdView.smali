.class public final Lcom/inmobi/androidsdk/IMAdView;
.super Landroid/widget/RelativeLayout;
.source "IMAdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/androidsdk/IMAdView$AnimationType;
    }
.end annotation


# static fields
.field public static final INMOBI_AD_UNIT_120X600:I = 0xd

.field public static final INMOBI_AD_UNIT_300X250:I = 0xa

.field public static final INMOBI_AD_UNIT_320X48:I = 0x9

.field public static final INMOBI_AD_UNIT_320X50:I = 0xf

.field public static final INMOBI_AD_UNIT_468X60:I = 0xc

.field public static final INMOBI_AD_UNIT_728X90:I = 0xb

.field public static final INMOBI_INTERNAL_TAG:Ljava/lang/String; = "ref-__in__rt"

.field public static final INMOBI_REF_TAG:Ljava/lang/String; = "ref-tag"

.field private static final K:I = 0x64

.field private static final L:I = 0x65

.field private static final M:I = 0x66

.field private static final N:I = 0x67

.field private static final O:I = 0x68

.field public static final REFRESH_INTERVAL_DEFAULT:I = 0x3c

.field public static final REFRESH_INTERVAL_OFF:I = -0x1

.field private static final a:I = 0x14

.field private static final b:I = 0x64

.field private static final c:I = 0x65

.field private static final d:I = 0x66

.field private static final e:I = 0x67

.field private static final f:I = 0x68

.field private static final g:I = 0x69

.field private static final h:I = 0x6a

.field private static final x:Ljava/lang/String; = "<style>#im_c { background: -webkit-gradient(linear, left top, left bottom, from(#BGCOLOR1), to(#BGCOLOR2)) !important;\tbackground: -moz-linear-gradient(top,  #BGCOLOR1,  #BGCOLOR2) !important;} </style>"

.field private static final y:Ljava/lang/String; = "<style>#im_c { \tbackground:#BGCOLOR1 !important;} </style>"

.field private static final z:Ljava/lang/String; = "<style>#im_text {\tcolor:#TEXTCOLOR !important;} </style>"


# instance fields
.field private A:Lcom/inmobi/androidsdk/IMAdListener;

.field private B:Lcom/inmobi/androidsdk/IMAdRequest;

.field private C:Ljava/lang/String;

.field private D:I

.field private E:Z

.field private F:J

.field private G:Z

.field private H:Lcom/inmobi/androidsdk/IMAdView$AnimationType;

.field private I:Z

.field private J:Lcom/inmobi/androidsdk/a;

.field private P:Ljava/lang/String;

.field private Q:Landroid/os/Handler;

.field private R:Landroid/view/View$OnTouchListener;

.field private S:Landroid/view/animation/Animation$AnimationListener;

.field private T:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

.field private U:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

.field private i:I

.field private j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

.field private k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/app/Activity;

.field private n:Z

.field private o:Lcom/inmobi/androidsdk/impl/UserInfo;

.field private p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private r:Landroid/view/animation/Animation;

.field private s:Landroid/view/animation/Animation;

.field private t:Lcom/inmobi/androidsdk/impl/AdUnit;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 190
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 120
    const/16 v0, 0x3c

    iput v0, p0, Lcom/inmobi/androidsdk/IMAdView;->i:I

    .line 127
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/IMAdView;->n:Z

    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 130
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    .line 158
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/androidsdk/IMAdView;->F:J

    .line 160
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/IMAdView;->G:Z

    .line 162
    sget-object v0, Lcom/inmobi/androidsdk/IMAdView$AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/androidsdk/IMAdView$AnimationType;

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->H:Lcom/inmobi/androidsdk/IMAdView$AnimationType;

    .line 164
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/IMAdView;->I:Z

    .line 855
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$1;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$1;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->Q:Landroid/os/Handler;

    .line 977
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$2;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$2;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->R:Landroid/view/View$OnTouchListener;

    .line 1016
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$3;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$3;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->S:Landroid/view/animation/Animation$AnimationListener;

    .line 1066
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$4;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$4;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->T:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    .line 1130
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$5;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$5;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->U:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    .line 191
    invoke-static {}, Lcom/inmobi/androidsdk/ai/controller/util/Utils;->incrementBaseUrl()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://www.inmobi.com/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->P:Ljava/lang/String;

    .line 194
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/androidsdk/IMAdView;->a(Landroid/app/Activity;ILjava/lang/String;)V

    .line 195
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 176
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 120
    const/16 v0, 0x3c

    iput v0, p0, Lcom/inmobi/androidsdk/IMAdView;->i:I

    .line 127
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/IMAdView;->n:Z

    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 130
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    .line 158
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/androidsdk/IMAdView;->F:J

    .line 160
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/IMAdView;->G:Z

    .line 162
    sget-object v0, Lcom/inmobi/androidsdk/IMAdView$AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/androidsdk/IMAdView$AnimationType;

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->H:Lcom/inmobi/androidsdk/IMAdView$AnimationType;

    .line 164
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/IMAdView;->I:Z

    .line 855
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$1;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$1;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->Q:Landroid/os/Handler;

    .line 977
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$2;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$2;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->R:Landroid/view/View$OnTouchListener;

    .line 1016
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$3;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$3;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->S:Landroid/view/animation/Animation$AnimationListener;

    .line 1066
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$4;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$4;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->T:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    .line 1130
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$5;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$5;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->U:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 198
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    const/16 v0, 0x3c

    iput v0, p0, Lcom/inmobi/androidsdk/IMAdView;->i:I

    .line 127
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/IMAdView;->n:Z

    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 130
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 133
    iput-object v3, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    .line 158
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/androidsdk/IMAdView;->F:J

    .line 160
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/IMAdView;->G:Z

    .line 162
    sget-object v0, Lcom/inmobi/androidsdk/IMAdView$AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/androidsdk/IMAdView$AnimationType;

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->H:Lcom/inmobi/androidsdk/IMAdView$AnimationType;

    .line 164
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/IMAdView;->I:Z

    .line 855
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$1;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$1;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->Q:Landroid/os/Handler;

    .line 977
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$2;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$2;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->R:Landroid/view/View$OnTouchListener;

    .line 1016
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$3;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$3;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->S:Landroid/view/animation/Animation$AnimationListener;

    .line 1066
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$4;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$4;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->T:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    .line 1130
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$5;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$5;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->U:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    .line 199
    invoke-static {}, Lcom/inmobi/androidsdk/ai/controller/util/Utils;->incrementBaseUrl()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://www.inmobi.com/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->P:Ljava/lang/String;

    .line 202
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "InMobiAndroidSDK_3.5.2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IMAdView Constructor context: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    const-string v0, "appId"

    invoke-interface {p2, v3, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    const-string v1, "adSlot"

    const/4 v2, -0x1

    invoke-interface {p2, v3, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 210
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 211
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a valid \'appId\' attribute in the \'com.inmobi.androidsdk.IMAdView\' tag of layout XML. For example, appId=\"yourAppId\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_2
    if-gez v1, :cond_3

    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a valid \'adSlot\' attribute in the \'com.inmobi.androidsdk.IMAdView\' tag of layout XML. For example, adSlot=\"yourAddSlot\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_3
    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1, v1, v0}, Lcom/inmobi/androidsdk/IMAdView;->a(Landroid/app/Activity;ILjava/lang/String;)V

    .line 218
    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMAdView;)I
    .locals 1
    .parameter

    .prologue
    .line 120
    iget v0, p0, Lcom/inmobi/androidsdk/IMAdView;->i:I

    return v0
.end method

.method private a(ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 614
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/IMAdView;->I:Z

    if-nez v0, :cond_1

    .line 615
    const-string v0, "InMobiAndroidSDK_3.5.2"

    .line 616
    const-string v1, "IMAdView not sending callback because the view is not added to any window."

    .line 615
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->A:Lcom/inmobi/androidsdk/IMAdListener;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Landroid/app/Activity;

    new-instance v1, Lcom/inmobi/androidsdk/IMAdView$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/inmobi/androidsdk/IMAdView$6;-><init>(Lcom/inmobi/androidsdk/IMAdView;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 244
    if-nez p1, :cond_0

    .line 245
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    if-gez p2, :cond_1

    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 249
    const-string v1, "Ad Slot value cannot be negative"

    .line 248
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_1
    if-nez p3, :cond_2

    .line 252
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "App ID cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 255
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "App ID cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_3
    iput-object p3, p0, Lcom/inmobi/androidsdk/IMAdView;->C:Ljava/lang/String;

    .line 258
    iput p2, p0, Lcom/inmobi/androidsdk/IMAdView;->D:I

    .line 259
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Landroid/app/Activity;

    .line 261
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-nez v0, :cond_4

    .line 262
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Landroid/app/Activity;

    iget-object v2, p0, Lcom/inmobi/androidsdk/IMAdView;->U:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;ZZ)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 265
    :cond_4
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-nez v0, :cond_5

    .line 266
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Landroid/app/Activity;

    iget-object v2, p0, Lcom/inmobi/androidsdk/IMAdView;->U:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;ZZ)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 267
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->addView(Landroid/view/View;)V

    .line 269
    :cond_5
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->l:Landroid/widget/LinearLayout;

    if-nez v0, :cond_6

    .line 270
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->l:Landroid/widget/LinearLayout;

    .line 271
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->l:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 272
    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 271
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->l:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->R:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 274
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 275
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->addView(Landroid/view/View;)V

    .line 278
    :cond_6
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->c()V

    .line 281
    new-instance v0, Lcom/inmobi/androidsdk/a;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->S:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {v0, p0, v1}, Lcom/inmobi/androidsdk/a;-><init>(Lcom/inmobi/androidsdk/IMAdView;Landroid/view/animation/Animation$AnimationListener;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->J:Lcom/inmobi/androidsdk/a;

    .line 283
    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMAdView;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 610
    invoke-direct {p0, p1, p2}, Lcom/inmobi/androidsdk/IMAdView;->a(ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMAdView;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    iput-wide p1, p0, Lcom/inmobi/androidsdk/IMAdView;->F:J

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMAdView;Lcom/inmobi/androidsdk/impl/AdUnit;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMAdView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/IMAdView;->G:Z

    return-void
.end method

.method private a(Lcom/inmobi/androidsdk/impl/AdUnit;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 287
    if-eqz p1, :cond_4

    sget-object v0, Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;->NONE:Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/AdUnit;->getAdType()Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;

    move-result-object v1

    if-eq v0, v1, :cond_4

    .line 288
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/AdUnit;->getCDATABlock()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 290
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/AdUnit;->getCDATABlock()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/AdUnit;->getAdType()Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;->TEXT:Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;

    if-ne v1, v2, :cond_0

    .line 293
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->a(Ljava/lang/StringBuffer;)V

    .line 296
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    const-string v1, "%"

    const-string v2, "%25"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 302
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-nez v0, :cond_1

    .line 303
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Landroid/app/Activity;

    iget-object v3, p0, Lcom/inmobi/androidsdk/IMAdView;->U:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    invoke-direct {v0, v1, v3, v4, v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;ZZ)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 312
    :goto_0
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/AdUnit;->getAdActionName()Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    move-result-object v1

    sget-object v3, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;->AdActionName_Search:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    if-ne v1, v3, :cond_3

    .line 313
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 314
    const-string v1, "InMobiAndroidSDK_3.5.2"

    .line 315
    const-string v3, "It came to AdActionType_Search method of displayad"

    .line 314
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_2
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->Q:Landroid/os/Handler;

    .line 318
    const/16 v3, 0x67

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 317
    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->requestOnSearchAdClicked(Landroid/os/Message;)V

    .line 320
    :cond_3
    invoke-virtual {v0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setAdUnit(Lcom/inmobi/androidsdk/impl/AdUnit;)V

    .line 321
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->Q:Landroid/os/Handler;

    .line 322
    const/16 v3, 0x65

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 321
    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->requestOnPageFinishedCallback(Landroid/os/Message;)V

    .line 323
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->reinitializeExpandProperties()V

    .line 325
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->P:Ljava/lang/String;

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<html><head><meta name=\"viewport\" content=\"width=device-width,initial-scale=1,user-scalable=no,maximum-scale=1\"><meta http-equiv=\"Content-Type\" content=\"text/html charset=utf-16le\"></head><body style=\"margin:0;padding:0\">"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</body></html>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 326
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 329
    const-string v3, "text/html"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/inmobi/androidsdk/IMAdView;->P:Ljava/lang/String;

    .line 325
    invoke-virtual/range {v0 .. v5}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_4
    return-void

    .line 307
    :cond_5
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-nez v0, :cond_6

    .line 308
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Landroid/app/Activity;

    iget-object v3, p0, Lcom/inmobi/androidsdk/IMAdView;->U:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    invoke-direct {v0, v1, v3, v4, v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;ZZ)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 310
    :cond_6
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    goto :goto_0
.end method

.method private a(Ljava/lang/StringBuffer;)V
    .locals 3
    .parameter

    .prologue
    .line 337
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->u:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->v:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 340
    const-string v0, "<style>#im_c { background: -webkit-gradient(linear, left top, left bottom, from(#BGCOLOR1), to(#BGCOLOR2)) !important;\tbackground: -moz-linear-gradient(top,  #BGCOLOR1,  #BGCOLOR2) !important;} </style>"

    .line 341
    const-string v1, "#BGCOLOR1"

    iget-object v2, p0, Lcom/inmobi/androidsdk/IMAdView;->u:Ljava/lang/String;

    .line 340
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    const-string v1, "#BGCOLOR2"

    iget-object v2, p0, Lcom/inmobi/androidsdk/IMAdView;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 354
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->w:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 355
    const-string v0, "<style>#im_text {\tcolor:#TEXTCOLOR !important;} </style>"

    const-string v1, "#TEXTCOLOR"

    .line 356
    iget-object v2, p0, Lcom/inmobi/androidsdk/IMAdView;->w:Ljava/lang/String;

    .line 355
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    :cond_1
    return-void

    .line 347
    :cond_2
    const-string v0, "<style>#im_c { \tbackground:#BGCOLOR1 !important;} </style>"

    const-string v1, "#BGCOLOR1"

    .line 348
    iget-object v2, p0, Lcom/inmobi/androidsdk/IMAdView;->u:Ljava/lang/String;

    .line 347
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 532
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 533
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 801
    if-nez p1, :cond_0

    .line 802
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "color cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 805
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 806
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    .line 807
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 808
    const-string v1, "color should be of the format #rgb or #rrggbb "

    .line 807
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 810
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/IMAdView;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/IMAdView;Lcom/inmobi/androidsdk/impl/AdUnit;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/impl/AdUnit;)V

    return-void
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/IMAdView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 573
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/IMAdView;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 574
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 575
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 363
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->o:Lcom/inmobi/androidsdk/impl/UserInfo;

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->o:Lcom/inmobi/androidsdk/impl/UserInfo;

    .line 366
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 367
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 368
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 369
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 370
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Landroid/app/Activity;

    .line 371
    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 370
    check-cast v0, Landroid/view/WindowManager;

    .line 372
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 374
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 375
    iget-object v3, p0, Lcom/inmobi/androidsdk/IMAdView;->o:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setScreenDensity(Ljava/lang/String;)V

    .line 376
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->o:Lcom/inmobi/androidsdk/impl/UserInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setScreenSize(Ljava/lang/String;)V

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->o:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getPhoneDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->o:Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 383
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    .line 382
    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setPhoneDefaultUserAgent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->o:Lcom/inmobi/androidsdk/impl/UserInfo;

    iget v1, p0, Lcom/inmobi/androidsdk/IMAdView;->D:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setAdUnitSlot(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->o:Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->C:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/androidsdk/IMAdView;->B:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/UserInfo;->updateInfo(Ljava/lang/String;Lcom/inmobi/androidsdk/IMAdRequest;)V

    .line 395
    return-void

    .line 385
    :catch_0
    move-exception v0

    .line 386
    const-string v1, "InMobiAndroidSDK_3.5.2"

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception occured while setting user agent"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/IMAdView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 581
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/IMAdView;->c(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 582
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/IMAdView;->n:Z

    .line 583
    if-eqz p1, :cond_0

    .line 584
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->deinit()V

    .line 586
    iput-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 592
    :goto_0
    return-void

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->deinit()V

    .line 590
    iput-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    goto :goto_0
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/IMAdView;)Z
    .locals 1
    .parameter

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/IMAdView;->G:Z

    return v0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 399
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/IMAdView;->removeAllViews()V

    .line 400
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 402
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/IMAdView;->addView(Landroid/view/View;)V

    .line 403
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/AdUnit;->getAdActionName()Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;->AdActionName_Search:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    if-ne v1, v2, :cond_0

    .line 404
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->requestFocusFromTouch()Z

    .line 412
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/AdUnit;->getAdType()Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;->RICH_MEDIA:Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;

    if-eq v1, v2, :cond_1

    .line 413
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/AdUnit;->getAdActionName()Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;->AdActionName_Search:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    if-eq v1, v2, :cond_1

    .line 414
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/IMAdView;->addView(Landroid/view/View;)V

    .line 417
    :cond_1
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->h()Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->c(Z)V

    .line 418
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->a(Z)V

    .line 419
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->k()V

    .line 425
    :cond_2
    :goto_2
    return-void

    .line 407
    :cond_3
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/IMAdView;->addView(Landroid/view/View;)V

    .line 408
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/AdUnit;->getAdActionName()Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;->AdActionName_Search:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    if-ne v1, v2, :cond_0

    .line 409
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->requestFocusFromTouch()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 420
    :catch_0
    move-exception v0

    .line 421
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 422
    const-string v0, "InMobiAndroidSDK_3.5.2"

    const-string v1, "Error swapping banner ads"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 417
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic d(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->d()V

    return-void
.end method

.method static synthetic d(Lcom/inmobi/androidsdk/IMAdView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 531
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/IMAdView;->a(Z)V

    return-void
.end method

.method static synthetic e(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/IMAdView$AnimationType;
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->H:Lcom/inmobi/androidsdk/IMAdView$AnimationType;

    return-object v0
.end method

.method private e()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 493
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 494
    sget-boolean v3, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 495
    const-string v3, "InMobiAndroidSDK_3.5.2"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Time Gap: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 496
    iget-wide v5, p0, Lcom/inmobi/androidsdk/IMAdView;->F:J

    sub-long v5, v1, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 495
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_0
    iget-wide v3, p0, Lcom/inmobi/androidsdk/IMAdView;->F:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x4e20

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 500
    const-string v1, "InMobiAndroidSDK_3.5.2"

    const-string v2, "Ad cannot be refreshed now, as the minimum refresh interval is20 seconds."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_1
    :goto_0
    return v0

    .line 507
    :cond_2
    iget-boolean v1, p0, Lcom/inmobi/androidsdk/IMAdView;->E:Z

    if-nez v1, :cond_3

    .line 508
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->C:Ljava/lang/String;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/controller/util/Utils;->validateAppId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 514
    :cond_3
    iget v1, p0, Lcom/inmobi/androidsdk/IMAdView;->D:I

    if-gez v1, :cond_4

    .line 515
    const-string v1, "InMobiAndroidSDK_3.5.2"

    .line 516
    const-string v2, "Cannot load ad because adSlot is negative. Please provide a valid adSlot."

    .line 515
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 520
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic f(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/a;
    .locals 1
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->J:Lcom/inmobi/androidsdk/a;

    return-object v0
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 682
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->i()V

    return-void
.end method

.method private g()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 537
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 570
    :goto_0
    return v0

    .line 545
    :cond_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 546
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 550
    :goto_1
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getState()Ljava/lang/String;

    move-result-object v2

    .line 552
    sget-boolean v3, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 553
    const-string v3, "InMobiAndroidSDK_3.5.2"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Current Ad State: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_1
    sget-object v3, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    invoke-virtual {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 556
    sget-object v3, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->RESIZED:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    invoke-virtual {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 557
    sget-object v3, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->EXPANDING:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    invoke-virtual {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 558
    :cond_2
    const-string v0, "InMobiAndroidSDK_3.5.2"

    .line 560
    const-string v2, "Current Ad State is neither default nor loading. New ad will not be shown."

    .line 558
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 561
    goto :goto_0

    .line 548
    :cond_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    goto :goto_1

    .line 566
    :cond_4
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 567
    const-string v0, "InMobiAndroidSDK_3.5.2"

    const-string v2, "New ad will not be shown because the present ad is busy. Eg. Video/audio is playing, etc."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 568
    goto :goto_0

    .line 570
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    return-object v0
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 578
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/IMAdView;->n:Z

    return v0
.end method

.method static synthetic i(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    return-object v0
.end method

.method private i()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 684
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    if-eqz v0, :cond_0

    .line 686
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 687
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->b(Z)V

    .line 688
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/AdUnit;->getTargetUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->Q:Landroid/os/Handler;

    .line 690
    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 689
    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->requestCallbackOnClosed(Landroid/os/Message;)V

    .line 691
    new-instance v0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;

    .line 692
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    .line 693
    iget-object v2, p0, Lcom/inmobi/androidsdk/IMAdView;->o:Lcom/inmobi/androidsdk/impl/UserInfo;

    .line 694
    iget-object v3, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Landroid/app/Activity;

    .line 695
    iget-object v4, p0, Lcom/inmobi/androidsdk/IMAdView;->Q:Landroid/os/Handler;

    const/16 v5, 0x66

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 696
    iget-object v5, p0, Lcom/inmobi/androidsdk/IMAdView;->Q:Landroid/os/Handler;

    const/16 v6, 0x69

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 697
    iget-object v6, p0, Lcom/inmobi/androidsdk/IMAdView;->Q:Landroid/os/Handler;

    const/16 v7, 0x6a

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    iget-object v7, p0, Lcom/inmobi/androidsdk/IMAdView;->U:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    .line 691
    invoke-direct/range {v0 .. v7}, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;-><init>(Lcom/inmobi/androidsdk/impl/AdUnit;Lcom/inmobi/androidsdk/impl/UserInfo;Landroid/content/Context;Landroid/os/Message;Landroid/os/Message;Landroid/os/Message;Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    .line 698
    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->k()V

    .line 711
    return-void

    .line 702
    :catch_0
    move-exception v0

    .line 703
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 704
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 705
    const-string v1, "InMobiAndroidSDK_3.5.2"

    const-string v2, "Exception processing ad click"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 708
    :cond_1
    invoke-direct {p0, v8}, Lcom/inmobi/androidsdk/IMAdView;->b(Z)V

    goto :goto_0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 715
    const/16 v0, 0x64

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 716
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v1, :cond_0

    .line 717
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setBackgroundColor(I)V

    .line 719
    :cond_0
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v1, :cond_1

    .line 720
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setBackgroundColor(I)V

    .line 722
    :cond_1
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    :cond_2
    :goto_0
    return-void

    .line 723
    :catch_0
    move-exception v0

    .line 724
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 725
    const-string v0, "InMobiAndroidSDK_3.5.2"

    const-string v1, "Error setHighlightedBGColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic j(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 730
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->k()V

    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 732
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setBackgroundColor(I)V

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v0, :cond_1

    .line 736
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setBackgroundColor(I)V

    .line 738
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->l:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    :cond_2
    :goto_0
    return-void

    .line 739
    :catch_0
    move-exception v0

    .line 740
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 741
    const-string v0, "InMobiAndroidSDK_3.5.2"

    const-string v1, "Error setNormalBGColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic k(Lcom/inmobi/androidsdk/IMAdView;)Z
    .locals 1
    .parameter

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic l(Lcom/inmobi/androidsdk/IMAdView;)Z
    .locals 1
    .parameter

    .prologue
    .line 523
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic m(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/impl/AdUnit;
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    return-object v0
.end method

.method static synthetic n(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 713
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->j()V

    return-void
.end method

.method static synthetic o(Lcom/inmobi/androidsdk/IMAdView;)Z
    .locals 1
    .parameter

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic p(Lcom/inmobi/androidsdk/IMAdView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->l:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic q(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/IMAdListener;
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->A:Lcom/inmobi/androidsdk/IMAdListener;

    return-object v0
.end method


# virtual methods
.method a()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->r:Landroid/view/animation/Animation;

    return-object v0
.end method

.method a(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 599
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->r:Landroid/view/animation/Animation;

    .line 600
    return-void
.end method

.method b()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->s:Landroid/view/animation/Animation;

    return-object v0
.end method

.method b(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 607
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->s:Landroid/view/animation/Animation;

    .line 608
    return-void
.end method

.method public getAdSlot()I
    .locals 1

    .prologue
    .line 1212
    iget v0, p0, Lcom/inmobi/androidsdk/IMAdView;->D:I

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->C:Ljava/lang/String;

    return-object v0
.end method

.method public getIMAdListener()Lcom/inmobi/androidsdk/IMAdListener;
    .locals 1

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->A:Lcom/inmobi/androidsdk/IMAdListener;

    return-object v0
.end method

.method public getIMAdRequest()Lcom/inmobi/androidsdk/IMAdRequest;
    .locals 1

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->B:Lcom/inmobi/androidsdk/IMAdRequest;

    return-object v0
.end method

.method public declared-synchronized loadNewAd()V
    .locals 4

    .prologue
    .line 436
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 437
    const-string v0, "InMobiAndroidSDK_3.5.2"

    const-string v1, " "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const-string v0, "InMobiAndroidSDK_3.5.2"

    const-string v1, ">>>> Start loading new Ad <<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 442
    const/16 v0, 0x65

    .line 443
    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->AD_DOWNLOAD_IN_PROGRESS:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 442
    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/IMAdView;->a(ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 470
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 445
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 446
    const/16 v0, 0x65

    .line 447
    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->AD_CLICK_IN_PROGRESS:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 446
    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/IMAdView;->a(ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    :try_start_3
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 467
    const-string v1, "InMobiAndroidSDK_3.5.2"

    const-string v2, "Error in loading ad"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 449
    :cond_3
    :try_start_4
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->e()Z

    move-result v0

    if-nez v0, :cond_4

    .line 450
    const/16 v0, 0x65

    .line 451
    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->INVALID_REQUEST:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 450
    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/IMAdView;->a(ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    goto :goto_0

    .line 456
    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->a(Z)V

    .line 457
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->c()V

    .line 460
    new-instance v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    .line 461
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 460
    invoke-direct {v0, v1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;-><init>(Landroid/content/Context;)V

    .line 462
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->o:Lcom/inmobi/androidsdk/impl/UserInfo;

    .line 463
    sget-object v2, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;->AdRequest:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    .line 464
    iget-object v3, p0, Lcom/inmobi/androidsdk/IMAdView;->T:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    .line 462
    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->asyncRequestAd(Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method

.method public loadNewAd(Lcom/inmobi/androidsdk/IMAdRequest;)V
    .locals 1
    .parameter

    .prologue
    .line 483
    if-eqz p1, :cond_0

    .line 484
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/IMAdRequest;->isTestMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/IMAdView;->E:Z

    .line 485
    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/IMAdView;->setIMAdRequest(Lcom/inmobi/androidsdk/IMAdRequest;)V

    .line 487
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/IMAdView;->loadNewAd()V

    .line 488
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 939
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 940
    const-string v0, "InMobiAndroidSDK_3.5.2"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/IMAdView;->I:Z

    .line 946
    iget v0, p0, Lcom/inmobi/androidsdk/IMAdView;->i:I

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->setRefreshInterval(I)V

    .line 948
    iget v0, p0, Lcom/inmobi/androidsdk/IMAdView;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 949
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/IMAdView;->loadNewAd()V

    .line 951
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 956
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 957
    const-string v0, "InMobiAndroidSDK_3.5.2"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/IMAdView;->I:Z

    .line 963
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->setRefreshInterval(I)V

    .line 965
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 966
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 970
    :goto_0
    if-eqz v0, :cond_1

    .line 971
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->deinit()V

    .line 973
    :cond_1
    return-void

    .line 968
    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    goto :goto_0
.end method

.method public setAdBackgroundColor(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 755
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/IMAdView;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 762
    :goto_0
    return-void

    .line 759
    :cond_0
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->u:Ljava/lang/String;

    .line 760
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/impl/AdUnit;)V

    goto :goto_0
.end method

.method public setAdBackgroundGradientColor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 775
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/IMAdView;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/inmobi/androidsdk/IMAdView;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    :goto_0
    return-void

    .line 779
    :cond_0
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->u:Ljava/lang/String;

    .line 780
    iput-object p2, p0, Lcom/inmobi/androidsdk/IMAdView;->v:Ljava/lang/String;

    .line 781
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/impl/AdUnit;)V

    goto :goto_0
.end method

.method public setAdSlot(I)V
    .locals 0
    .parameter

    .prologue
    .line 1222
    iput p1, p0, Lcom/inmobi/androidsdk/IMAdView;->D:I

    .line 1223
    return-void
.end method

.method public setAdTextColor(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 793
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/IMAdView;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 798
    :goto_0
    return-void

    .line 796
    :cond_0
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->w:Ljava/lang/String;

    .line 797
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/impl/AdUnit;)V

    goto :goto_0
.end method

.method public setAnimationType(Lcom/inmobi/androidsdk/IMAdView$AnimationType;)V
    .locals 0
    .parameter

    .prologue
    .line 852
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->H:Lcom/inmobi/androidsdk/IMAdView$AnimationType;

    .line 853
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1203
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->C:Ljava/lang/String;

    .line 1204
    return-void
.end method

.method public setIMAdListener(Lcom/inmobi/androidsdk/IMAdListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->A:Lcom/inmobi/androidsdk/IMAdListener;

    .line 1109
    return-void
.end method

.method public setIMAdRequest(Lcom/inmobi/androidsdk/IMAdRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->B:Lcom/inmobi/androidsdk/IMAdRequest;

    .line 1128
    return-void
.end method

.method public setRefTagParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 231
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Key or value cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key or value cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->o:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setRefTagKey(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->o:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setRefTagValue(Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public setRefreshInterval(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, -0x1

    const/16 v3, 0x64

    .line 829
    if-ne p1, v0, :cond_0

    .line 830
    iput v0, p0, Lcom/inmobi/androidsdk/IMAdView;->i:I

    .line 831
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->Q:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 843
    :goto_0
    return-void

    .line 834
    :cond_0
    const/16 v0, 0x14

    if-ge p1, v0, :cond_1

    .line 835
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 836
    const-string v1, "Refresh Interval cannot be less than 20 seconds."

    .line 835
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 839
    :cond_1
    iput p1, p0, Lcom/inmobi/androidsdk/IMAdView;->i:I

    .line 840
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->Q:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 841
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->Q:Landroid/os/Handler;

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
