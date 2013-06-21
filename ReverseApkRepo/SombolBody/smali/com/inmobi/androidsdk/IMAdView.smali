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

.field private static final M:I = 0x64

.field private static final N:I = 0x65

.field private static final O:I = 0x66

.field private static final P:I = 0x67

.field private static final Q:I = 0x68

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

.field private D:J

.field private E:I

.field private F:Z

.field private G:J

.field private H:Z

.field private I:Lcom/inmobi/androidsdk/IMAdView$AnimationType;

.field private J:Z

.field private K:Lcom/inmobi/androidsdk/a;

.field private L:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Landroid/os/Handler;

.field private T:Landroid/view/View$OnTouchListener;

.field private U:Landroid/view/animation/Animation$AnimationListener;

.field private V:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

.field private W:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

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

    .line 192
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 121
    const/16 v0, 0x3c

    iput v0, p0, Lcom/inmobi/androidsdk/IMAdView;->i:I

    .line 128
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/IMAdView;->n:Z

    .line 130
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    .line 155
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/androidsdk/IMAdView;->D:J

    .line 159
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/androidsdk/IMAdView;->G:J

    .line 161
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/IMAdView;->H:Z

    .line 163
    sget-object v0, Lcom/inmobi/androidsdk/IMAdView$AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/androidsdk/IMAdView$AnimationType;

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->I:Lcom/inmobi/androidsdk/IMAdView$AnimationType;

    .line 165
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/IMAdView;->J:Z

    .line 167
    const-string v0, "http://i.w.inmobi.com/showad.asm"

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->L:Ljava/lang/String;

    .line 889
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$1;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$1;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->S:Landroid/os/Handler;

    .line 1011
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$2;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$2;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->T:Landroid/view/View$OnTouchListener;

    .line 1050
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$3;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$3;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->U:Landroid/view/animation/Animation$AnimationListener;

    .line 1100
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$4;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$4;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->V:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    .line 1164
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$5;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$5;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->W:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    .line 193
    invoke-static {}, Lcom/inmobi/androidsdk/ai/controller/util/Utils;->incrementBaseUrl()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://www.noreply.inmobi.com/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->R:Ljava/lang/String;

    .line 196
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/androidsdk/IMAdView;->a(Landroid/app/Activity;ILjava/lang/String;)V

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;J)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 213
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 121
    const/16 v0, 0x3c

    iput v0, p0, Lcom/inmobi/androidsdk/IMAdView;->i:I

    .line 128
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/IMAdView;->n:Z

    .line 130
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    .line 155
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/androidsdk/IMAdView;->D:J

    .line 159
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/androidsdk/IMAdView;->G:J

    .line 161
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/IMAdView;->H:Z

    .line 163
    sget-object v0, Lcom/inmobi/androidsdk/IMAdView$AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/androidsdk/IMAdView$AnimationType;

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->I:Lcom/inmobi/androidsdk/IMAdView$AnimationType;

    .line 165
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/IMAdView;->J:Z

    .line 167
    const-string v0, "http://i.w.inmobi.com/showad.asm"

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->L:Ljava/lang/String;

    .line 889
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$1;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$1;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->S:Landroid/os/Handler;

    .line 1011
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$2;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$2;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->T:Landroid/view/View$OnTouchListener;

    .line 1050
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$3;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$3;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->U:Landroid/view/animation/Animation$AnimationListener;

    .line 1100
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$4;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$4;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->V:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    .line 1164
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$5;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$5;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->W:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    .line 214
    invoke-static {}, Lcom/inmobi/androidsdk/ai/controller/util/Utils;->incrementBaseUrl()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://www.noreply.inmobi.com/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->R:Ljava/lang/String;

    .line 216
    iput-wide p4, p0, Lcom/inmobi/androidsdk/IMAdView;->D:J

    .line 217
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/androidsdk/IMAdView;->a(Landroid/app/Activity;ILjava/lang/String;)V

    .line 218
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 178
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 121
    const/16 v0, 0x3c

    iput v0, p0, Lcom/inmobi/androidsdk/IMAdView;->i:I

    .line 128
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/IMAdView;->n:Z

    .line 130
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    .line 155
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/androidsdk/IMAdView;->D:J

    .line 159
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/androidsdk/IMAdView;->G:J

    .line 161
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/IMAdView;->H:Z

    .line 163
    sget-object v0, Lcom/inmobi/androidsdk/IMAdView$AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/androidsdk/IMAdView$AnimationType;

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->I:Lcom/inmobi/androidsdk/IMAdView$AnimationType;

    .line 165
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/IMAdView;->J:Z

    .line 167
    const-string v0, "http://i.w.inmobi.com/showad.asm"

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->L:Ljava/lang/String;

    .line 889
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$1;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$1;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->S:Landroid/os/Handler;

    .line 1011
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$2;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$2;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->T:Landroid/view/View$OnTouchListener;

    .line 1050
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$3;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$3;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->U:Landroid/view/animation/Animation$AnimationListener;

    .line 1100
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$4;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$4;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->V:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    .line 1164
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$5;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$5;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->W:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 221
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    const/16 v0, 0x3c

    iput v0, p0, Lcom/inmobi/androidsdk/IMAdView;->i:I

    .line 128
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/IMAdView;->n:Z

    .line 130
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 134
    iput-object v3, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    .line 155
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/androidsdk/IMAdView;->D:J

    .line 159
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/androidsdk/IMAdView;->G:J

    .line 161
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/IMAdView;->H:Z

    .line 163
    sget-object v0, Lcom/inmobi/androidsdk/IMAdView$AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/androidsdk/IMAdView$AnimationType;

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->I:Lcom/inmobi/androidsdk/IMAdView$AnimationType;

    .line 165
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/IMAdView;->J:Z

    .line 167
    const-string v0, "http://i.w.inmobi.com/showad.asm"

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->L:Ljava/lang/String;

    .line 889
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$1;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$1;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->S:Landroid/os/Handler;

    .line 1011
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$2;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$2;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->T:Landroid/view/View$OnTouchListener;

    .line 1050
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$3;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$3;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->U:Landroid/view/animation/Animation$AnimationListener;

    .line 1100
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$4;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$4;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->V:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    .line 1164
    new-instance v0, Lcom/inmobi/androidsdk/IMAdView$5;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdView$5;-><init>(Lcom/inmobi/androidsdk/IMAdView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->W:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    .line 222
    invoke-static {}, Lcom/inmobi/androidsdk/ai/controller/util/Utils;->incrementBaseUrl()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://www.noreply.inmobi.com/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->R:Ljava/lang/String;

    .line 225
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 226
    const-string v0, "InMobiAndroidSDK_3.5.4"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IMAdView Constructor context: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    const-string v0, "appId"

    invoke-interface {p2, v3, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    const-string v1, "adSlot"

    const/4 v2, -0x1

    invoke-interface {p2, v3, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 232
    const-string v2, "slotId"

    invoke-interface {p2, v3, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 233
    if-eqz v2, :cond_1

    .line 234
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/inmobi/androidsdk/IMAdView;->D:J

    .line 236
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 237
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a valid \'appId\' attribute in the \'com.inmobi.androidsdk.IMAdView\' tag of layout XML. For example, appId=\"yourAppId\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_3
    if-gez v1, :cond_4

    .line 241
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a valid \'adSlot\' attribute in the \'com.inmobi.androidsdk.IMAdView\' tag of layout XML. For example, adSlot=\"yourAddSlot\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_4
    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1, v1, v0}, Lcom/inmobi/androidsdk/IMAdView;->a(Landroid/app/Activity;ILjava/lang/String;)V

    .line 244
    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMAdView;)I
    .locals 1
    .parameter

    .prologue
    .line 121
    iget v0, p0, Lcom/inmobi/androidsdk/IMAdView;->i:I

    return v0
.end method

.method private a(ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 648
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/IMAdView;->J:Z

    if-nez v0, :cond_1

    .line 649
    const-string v0, "InMobiAndroidSDK_3.5.4"

    .line 650
    const-string v1, "IMAdView not sending callback because the view is not added to any window."

    .line 649
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->A:Lcom/inmobi/androidsdk/IMAdListener;

    if-eqz v0, :cond_0

    .line 659
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

    .line 270
    if-nez p1, :cond_0

    .line 271
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_0
    if-gez p2, :cond_1

    .line 274
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 275
    const-string v1, "Ad Slot value cannot be negative"

    .line 274
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_1
    if-nez p3, :cond_2

    .line 278
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "App ID cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 281
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "App ID cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_3
    iput-object p3, p0, Lcom/inmobi/androidsdk/IMAdView;->C:Ljava/lang/String;

    .line 284
    iput p2, p0, Lcom/inmobi/androidsdk/IMAdView;->E:I

    .line 285
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Landroid/app/Activity;

    .line 287
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-nez v0, :cond_4

    .line 288
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Landroid/app/Activity;

    iget-object v2, p0, Lcom/inmobi/androidsdk/IMAdView;->W:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;ZZ)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 291
    :cond_4
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-nez v0, :cond_5

    .line 292
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Landroid/app/Activity;

    iget-object v2, p0, Lcom/inmobi/androidsdk/IMAdView;->W:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;ZZ)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 293
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->addView(Landroid/view/View;)V

    .line 295
    :cond_5
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->l:Landroid/widget/LinearLayout;

    if-nez v0, :cond_6

    .line 296
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->l:Landroid/widget/LinearLayout;

    .line 297
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->l:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 298
    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 297
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->l:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->T:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 300
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 301
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->addView(Landroid/view/View;)V

    .line 304
    :cond_6
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->c()V

    .line 307
    new-instance v0, Lcom/inmobi/androidsdk/a;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->U:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {v0, p0, v1}, Lcom/inmobi/androidsdk/a;-><init>(Lcom/inmobi/androidsdk/IMAdView;Landroid/view/animation/Animation$AnimationListener;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->K:Lcom/inmobi/androidsdk/a;

    .line 309
    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMAdView;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 644
    invoke-direct {p0, p1, p2}, Lcom/inmobi/androidsdk/IMAdView;->a(ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMAdView;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 159
    iput-wide p1, p0, Lcom/inmobi/androidsdk/IMAdView;->G:J

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMAdView;Lcom/inmobi/androidsdk/impl/AdUnit;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMAdView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/IMAdView;->H:Z

    return-void
.end method

.method private a(Lcom/inmobi/androidsdk/impl/AdUnit;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 313
    if-eqz p1, :cond_4

    sget-object v0, Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;->NONE:Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/AdUnit;->getAdType()Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;

    move-result-object v1

    if-eq v0, v1, :cond_4

    .line 314
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/AdUnit;->getCDATABlock()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 316
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/AdUnit;->getCDATABlock()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/AdUnit;->getAdType()Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;->TEXT:Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;

    if-ne v1, v2, :cond_0

    .line 319
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->a(Ljava/lang/StringBuffer;)V

    .line 322
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    const-string v1, "%"

    const-string v2, "%25"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 327
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 328
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-nez v0, :cond_1

    .line 329
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Landroid/app/Activity;

    iget-object v3, p0, Lcom/inmobi/androidsdk/IMAdView;->W:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    invoke-direct {v0, v1, v3, v4, v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;ZZ)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 338
    :goto_0
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/AdUnit;->getAdActionName()Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    move-result-object v1

    sget-object v3, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;->AdActionName_Search:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    if-ne v1, v3, :cond_3

    .line 339
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 340
    const-string v1, "InMobiAndroidSDK_3.5.4"

    .line 341
    const-string v3, "It came to AdActionType_Search method of displayad"

    .line 340
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_2
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->S:Landroid/os/Handler;

    .line 344
    const/16 v3, 0x67

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 343
    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->requestOnSearchAdClicked(Landroid/os/Message;)V

    .line 346
    :cond_3
    invoke-virtual {v0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setAdUnit(Lcom/inmobi/androidsdk/impl/AdUnit;)V

    .line 347
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->S:Landroid/os/Handler;

    .line 348
    const/16 v3, 0x65

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 347
    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->requestOnPageFinishedCallback(Landroid/os/Message;)V

    .line 349
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->reinitializeExpandProperties()V

    .line 351
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->R:Ljava/lang/String;

    .line 352
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<html><head><meta name=\"viewport\" content=\"width=device-width,initial-scale=1,user-scalable=no,maximum-scale=1\"><meta http-equiv=\"Content-Type\" content=\"text/html charset=utf-16le\"></head><body style=\"margin:0;padding:0\">"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</body></html>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 352
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 355
    const-string v3, "text/html"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/inmobi/androidsdk/IMAdView;->R:Ljava/lang/String;

    .line 351
    invoke-virtual/range {v0 .. v5}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_4
    return-void

    .line 333
    :cond_5
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-nez v0, :cond_6

    .line 334
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Landroid/app/Activity;

    iget-object v3, p0, Lcom/inmobi/androidsdk/IMAdView;->W:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    invoke-direct {v0, v1, v3, v4, v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;ZZ)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 336
    :cond_6
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    goto :goto_0
.end method

.method private a(Ljava/lang/StringBuffer;)V
    .locals 3
    .parameter

    .prologue
    .line 363
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->u:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->v:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 366
    const-string v0, "<style>#im_c { background: -webkit-gradient(linear, left top, left bottom, from(#BGCOLOR1), to(#BGCOLOR2)) !important;\tbackground: -moz-linear-gradient(top,  #BGCOLOR1,  #BGCOLOR2) !important;} </style>"

    .line 367
    const-string v1, "#BGCOLOR1"

    iget-object v2, p0, Lcom/inmobi/androidsdk/IMAdView;->u:Ljava/lang/String;

    .line 366
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    const-string v1, "#BGCOLOR2"

    iget-object v2, p0, Lcom/inmobi/androidsdk/IMAdView;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->w:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 381
    const-string v0, "<style>#im_text {\tcolor:#TEXTCOLOR !important;} </style>"

    const-string v1, "#TEXTCOLOR"

    .line 382
    iget-object v2, p0, Lcom/inmobi/androidsdk/IMAdView;->w:Ljava/lang/String;

    .line 381
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    :cond_1
    return-void

    .line 373
    :cond_2
    const-string v0, "<style>#im_c { \tbackground:#BGCOLOR1 !important;} </style>"

    const-string v1, "#BGCOLOR1"

    .line 374
    iget-object v2, p0, Lcom/inmobi/androidsdk/IMAdView;->u:Ljava/lang/String;

    .line 373
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 566
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 567
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 835
    if-nez p1, :cond_0

    .line 836
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "color cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 839
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 840
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    .line 841
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 842
    const-string v1, "color should be of the format #rgb or #rrggbb "

    .line 841
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 844
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/IMAdView;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/IMAdView;Lcom/inmobi/androidsdk/impl/AdUnit;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/impl/AdUnit;)V

    return-void
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/IMAdView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 607
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/IMAdView;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 608
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 609
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 389
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->o:Lcom/inmobi/androidsdk/impl/UserInfo;

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->o:Lcom/inmobi/androidsdk/impl/UserInfo;

    .line 392
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 393
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 394
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 395
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 396
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Landroid/app/Activity;

    .line 397
    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 396
    check-cast v0, Landroid/view/WindowManager;

    .line 398
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 399
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 400
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 401
    iget-object v3, p0, Lcom/inmobi/androidsdk/IMAdView;->o:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setScreenDensity(Ljava/lang/String;)V

    .line 402
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

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->o:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getPhoneDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->o:Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 409
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setPhoneDefaultUserAgent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->o:Lcom/inmobi/androidsdk/impl/UserInfo;

    iget v1, p0, Lcom/inmobi/androidsdk/IMAdView;->E:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setAdUnitSlot(Ljava/lang/String;)V

    .line 420
    iget-wide v0, p0, Lcom/inmobi/androidsdk/IMAdView;->D:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->o:Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-wide v1, p0, Lcom/inmobi/androidsdk/IMAdView;->D:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setSlotId(Ljava/lang/String;)V

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->o:Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->C:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/androidsdk/IMAdView;->B:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/UserInfo;->updateInfo(Ljava/lang/String;Lcom/inmobi/androidsdk/IMAdRequest;)V

    .line 424
    return-void

    .line 411
    :catch_0
    move-exception v0

    .line 412
    const-string v1, "InMobiAndroidSDK_3.5.4"

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception occured while setting user agent"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/IMAdView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 615
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/IMAdView;->c(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 616
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/IMAdView;->n:Z

    .line 617
    if-eqz p1, :cond_0

    .line 618
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->deinit()V

    .line 620
    iput-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 626
    :goto_0
    return-void

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->deinit()V

    .line 624
    iput-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    goto :goto_0
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/IMAdView;)Z
    .locals 1
    .parameter

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/IMAdView;->H:Z

    return v0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 428
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/IMAdView;->removeAllViews()V

    .line 429
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 431
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/IMAdView;->addView(Landroid/view/View;)V

    .line 432
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/AdUnit;->getAdActionName()Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;->AdActionName_Search:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    if-ne v1, v2, :cond_0

    .line 433
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->requestFocusFromTouch()Z

    .line 441
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/AdUnit;->getAdType()Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;->RICH_MEDIA:Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;

    if-eq v1, v2, :cond_1

    .line 442
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/AdUnit;->getAdActionName()Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;->AdActionName_Search:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    if-eq v1, v2, :cond_1

    .line 443
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/IMAdView;->addView(Landroid/view/View;)V

    .line 446
    :cond_1
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->h()Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->c(Z)V

    .line 447
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->a(Z)V

    .line 448
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->k()V

    .line 454
    :cond_2
    :goto_2
    return-void

    .line 436
    :cond_3
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/IMAdView;->addView(Landroid/view/View;)V

    .line 437
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/AdUnit;->getAdActionName()Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;->AdActionName_Search:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    if-ne v1, v2, :cond_0

    .line 438
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->requestFocusFromTouch()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 449
    :catch_0
    move-exception v0

    .line 450
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 451
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, "Error swapping banner ads"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 446
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic d(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->d()V

    return-void
.end method

.method static synthetic d(Lcom/inmobi/androidsdk/IMAdView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 565
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/IMAdView;->a(Z)V

    return-void
.end method

.method static synthetic e(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/IMAdView$AnimationType;
    .locals 1
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->I:Lcom/inmobi/androidsdk/IMAdView$AnimationType;

    return-object v0
.end method

.method private e()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 527
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 528
    sget-boolean v3, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 529
    const-string v3, "InMobiAndroidSDK_3.5.4"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Time Gap: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 530
    iget-wide v5, p0, Lcom/inmobi/androidsdk/IMAdView;->G:J

    sub-long v5, v1, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 529
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_0
    iget-wide v3, p0, Lcom/inmobi/androidsdk/IMAdView;->G:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x4e20

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 534
    const-string v1, "InMobiAndroidSDK_3.5.4"

    const-string v2, "Ad cannot be refreshed now, as the minimum refresh interval is20 seconds."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_1
    :goto_0
    return v0

    .line 541
    :cond_2
    iget-boolean v1, p0, Lcom/inmobi/androidsdk/IMAdView;->F:Z

    if-nez v1, :cond_3

    .line 542
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->C:Ljava/lang/String;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/controller/util/Utils;->validateAppId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 548
    :cond_3
    iget v1, p0, Lcom/inmobi/androidsdk/IMAdView;->E:I

    if-gez v1, :cond_4

    .line 549
    const-string v1, "InMobiAndroidSDK_3.5.4"

    .line 550
    const-string v2, "Cannot load ad because adSlot is negative. Please provide a valid adSlot."

    .line 549
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 554
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic f(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/a;
    .locals 1
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->K:Lcom/inmobi/androidsdk/a;

    return-object v0
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 716
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->i()V

    return-void
.end method

.method private g()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 571
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 604
    :goto_0
    return v0

    .line 579
    :cond_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 580
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 584
    :goto_1
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getState()Ljava/lang/String;

    move-result-object v2

    .line 586
    sget-boolean v3, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 587
    const-string v3, "InMobiAndroidSDK_3.5.4"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Current Ad State: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_1
    sget-object v3, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    invoke-virtual {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 590
    sget-object v3, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->RESIZED:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    invoke-virtual {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 591
    sget-object v3, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->EXPANDING:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    invoke-virtual {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 592
    :cond_2
    const-string v0, "InMobiAndroidSDK_3.5.4"

    .line 594
    const-string v2, "Current Ad State is neither default nor loading. New ad will not be shown."

    .line 592
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 595
    goto :goto_0

    .line 582
    :cond_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    goto :goto_1

    .line 600
    :cond_4
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 601
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v2, "New ad will not be shown because the present ad is busy. Eg. Video/audio is playing, etc."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 602
    goto :goto_0

    .line 604
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    return-object v0
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 612
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/IMAdView;->n:Z

    return v0
.end method

.method static synthetic i(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    return-object v0
.end method

.method private i()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 718
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    if-eqz v0, :cond_0

    .line 720
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 721
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->b(Z)V

    .line 722
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/AdUnit;->getTargetUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->S:Landroid/os/Handler;

    .line 724
    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 723
    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->requestCallbackOnClosed(Landroid/os/Message;)V

    .line 725
    new-instance v0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;

    .line 726
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    .line 727
    iget-object v2, p0, Lcom/inmobi/androidsdk/IMAdView;->o:Lcom/inmobi/androidsdk/impl/UserInfo;

    .line 728
    iget-object v3, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Landroid/app/Activity;

    .line 729
    iget-object v4, p0, Lcom/inmobi/androidsdk/IMAdView;->S:Landroid/os/Handler;

    const/16 v5, 0x66

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 730
    iget-object v5, p0, Lcom/inmobi/androidsdk/IMAdView;->S:Landroid/os/Handler;

    const/16 v6, 0x69

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 731
    iget-object v6, p0, Lcom/inmobi/androidsdk/IMAdView;->S:Landroid/os/Handler;

    const/16 v7, 0x6a

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    iget-object v7, p0, Lcom/inmobi/androidsdk/IMAdView;->W:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    .line 725
    invoke-direct/range {v0 .. v7}, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;-><init>(Lcom/inmobi/androidsdk/impl/AdUnit;Lcom/inmobi/androidsdk/impl/UserInfo;Landroid/content/Context;Landroid/os/Message;Landroid/os/Message;Landroid/os/Message;Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    .line 732
    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->k()V

    .line 745
    return-void

    .line 736
    :catch_0
    move-exception v0

    .line 737
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 738
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 739
    const-string v1, "InMobiAndroidSDK_3.5.4"

    const-string v2, "Exception processing ad click"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 742
    :cond_1
    invoke-direct {p0, v8}, Lcom/inmobi/androidsdk/IMAdView;->b(Z)V

    goto :goto_0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 749
    const/16 v0, 0x64

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 750
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v1, :cond_0

    .line 751
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setBackgroundColor(I)V

    .line 753
    :cond_0
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v1, :cond_1

    .line 754
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setBackgroundColor(I)V

    .line 756
    :cond_1
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    :cond_2
    :goto_0
    return-void

    .line 757
    :catch_0
    move-exception v0

    .line 758
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 759
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, "Error setHighlightedBGColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic j(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 764
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->k()V

    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 766
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setBackgroundColor(I)V

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v0, :cond_1

    .line 770
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setBackgroundColor(I)V

    .line 772
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->l:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    :cond_2
    :goto_0
    return-void

    .line 773
    :catch_0
    move-exception v0

    .line 774
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 775
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, "Error setNormalBGColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic k(Lcom/inmobi/androidsdk/IMAdView;)Z
    .locals 1
    .parameter

    .prologue
    .line 569
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic l(Lcom/inmobi/androidsdk/IMAdView;)Z
    .locals 1
    .parameter

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic m(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/impl/AdUnit;
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    return-object v0
.end method

.method static synthetic n(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 747
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->j()V

    return-void
.end method

.method static synthetic o(Lcom/inmobi/androidsdk/IMAdView;)Z
    .locals 1
    .parameter

    .prologue
    .line 611
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic p(Lcom/inmobi/androidsdk/IMAdView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->l:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic q(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/IMAdListener;
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->A:Lcom/inmobi/androidsdk/IMAdListener;

    return-object v0
.end method

.method private setAdServerUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 503
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->L:Ljava/lang/String;

    .line 504
    return-void
.end method


# virtual methods
.method a()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->r:Landroid/view/animation/Animation;

    return-object v0
.end method

.method a(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 633
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->r:Landroid/view/animation/Animation;

    .line 634
    return-void
.end method

.method b()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->s:Landroid/view/animation/Animation;

    return-object v0
.end method

.method b(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 641
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->s:Landroid/view/animation/Animation;

    .line 642
    return-void
.end method

.method public getAdSlot()I
    .locals 1

    .prologue
    .line 1246
    iget v0, p0, Lcom/inmobi/androidsdk/IMAdView;->E:I

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->C:Ljava/lang/String;

    return-object v0
.end method

.method public getIMAdListener()Lcom/inmobi/androidsdk/IMAdListener;
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->A:Lcom/inmobi/androidsdk/IMAdListener;

    return-object v0
.end method

.method public getIMAdRequest()Lcom/inmobi/androidsdk/IMAdRequest;
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->B:Lcom/inmobi/androidsdk/IMAdRequest;

    return-object v0
.end method

.method public getSlotId()J
    .locals 2

    .prologue
    .line 1266
    iget-wide v0, p0, Lcom/inmobi/androidsdk/IMAdView;->D:J

    return-wide v0
.end method

.method public declared-synchronized loadNewAd()V
    .locals 5

    .prologue
    .line 465
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 466
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, " "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, ">>>> Start loading new Ad <<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 471
    const/16 v0, 0x65

    .line 472
    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->AD_DOWNLOAD_IN_PROGRESS:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 471
    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/IMAdView;->a(ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 499
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 474
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 475
    const/16 v0, 0x65

    .line 476
    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->AD_CLICK_IN_PROGRESS:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 475
    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/IMAdView;->a(ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    :try_start_3
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 496
    const-string v1, "InMobiAndroidSDK_3.5.4"

    const-string v2, "Error in loading ad"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 478
    :cond_3
    :try_start_4
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->e()Z

    move-result v0

    if-nez v0, :cond_4

    .line 479
    const/16 v0, 0x65

    .line 480
    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->INVALID_REQUEST:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 479
    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/IMAdView;->a(ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    goto :goto_0

    .line 485
    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->a(Z)V

    .line 486
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->c()V

    .line 489
    new-instance v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    .line 490
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->m:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 489
    invoke-direct {v0, v1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;-><init>(Landroid/content/Context;)V

    .line 491
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView;->o:Lcom/inmobi/androidsdk/impl/UserInfo;

    .line 492
    sget-object v2, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;->AdRequest:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    iget-object v3, p0, Lcom/inmobi/androidsdk/IMAdView;->L:Ljava/lang/String;

    .line 493
    iget-object v4, p0, Lcom/inmobi/androidsdk/IMAdView;->V:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    .line 491
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->asyncRequestAd(Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method

.method public loadNewAd(Lcom/inmobi/androidsdk/IMAdRequest;)V
    .locals 1
    .parameter

    .prologue
    .line 517
    if-eqz p1, :cond_0

    .line 518
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/IMAdRequest;->isTestMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/IMAdView;->F:Z

    .line 519
    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/IMAdView;->setIMAdRequest(Lcom/inmobi/androidsdk/IMAdRequest;)V

    .line 521
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/IMAdView;->loadNewAd()V

    .line 522
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 973
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 974
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/IMAdView;->J:Z

    .line 980
    iget v0, p0, Lcom/inmobi/androidsdk/IMAdView;->i:I

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->setRefreshInterval(I)V

    .line 982
    iget v0, p0, Lcom/inmobi/androidsdk/IMAdView;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 983
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/IMAdView;->loadNewAd()V

    .line 985
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 990
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 991
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/IMAdView;->J:Z

    .line 997
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->setRefreshInterval(I)V

    .line 999
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdView;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1000
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->k:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 1004
    :goto_0
    if-eqz v0, :cond_1

    .line 1005
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->deinit()V

    .line 1007
    :cond_1
    return-void

    .line 1002
    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->j:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    goto :goto_0
.end method

.method public setAdBackgroundColor(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 789
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/IMAdView;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 796
    :goto_0
    return-void

    .line 793
    :cond_0
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->u:Ljava/lang/String;

    .line 794
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/impl/AdUnit;)V

    goto :goto_0
.end method

.method public setAdBackgroundGradientColor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 809
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/IMAdView;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/inmobi/androidsdk/IMAdView;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 817
    :goto_0
    return-void

    .line 813
    :cond_0
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->u:Ljava/lang/String;

    .line 814
    iput-object p2, p0, Lcom/inmobi/androidsdk/IMAdView;->v:Ljava/lang/String;

    .line 815
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/impl/AdUnit;)V

    goto :goto_0
.end method

.method public setAdSlot(I)V
    .locals 0
    .parameter

    .prologue
    .line 1256
    iput p1, p0, Lcom/inmobi/androidsdk/IMAdView;->E:I

    .line 1257
    return-void
.end method

.method public setAdTextColor(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 827
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/IMAdView;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 832
    :goto_0
    return-void

    .line 830
    :cond_0
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->w:Ljava/lang/String;

    .line 831
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->t:Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/impl/AdUnit;)V

    goto :goto_0
.end method

.method public setAnimationType(Lcom/inmobi/androidsdk/IMAdView$AnimationType;)V
    .locals 0
    .parameter

    .prologue
    .line 886
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->I:Lcom/inmobi/androidsdk/IMAdView$AnimationType;

    .line 887
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1237
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->C:Ljava/lang/String;

    .line 1238
    return-void
.end method

.method public setIMAdListener(Lcom/inmobi/androidsdk/IMAdListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->A:Lcom/inmobi/androidsdk/IMAdListener;

    .line 1143
    return-void
.end method

.method public setIMAdRequest(Lcom/inmobi/androidsdk/IMAdRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 1161
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView;->B:Lcom/inmobi/androidsdk/IMAdRequest;

    .line 1162
    return-void
.end method

.method public setRefTagParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 257
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 258
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Key or value cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
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

    .line 262
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key or value cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->o:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setRefTagKey(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->o:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setRefTagValue(Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public setRefreshInterval(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, -0x1

    const/16 v3, 0x64

    .line 863
    if-ne p1, v0, :cond_0

    .line 864
    iput v0, p0, Lcom/inmobi/androidsdk/IMAdView;->i:I

    .line 865
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->S:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 877
    :goto_0
    return-void

    .line 868
    :cond_0
    const/16 v0, 0x14

    if-ge p1, v0, :cond_1

    .line 869
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 870
    const-string v1, "Refresh Interval cannot be less than 20 seconds."

    .line 869
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 873
    :cond_1
    iput p1, p0, Lcom/inmobi/androidsdk/IMAdView;->i:I

    .line 874
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->S:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 875
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView;->S:Landroid/os/Handler;

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public setSlotId(J)V
    .locals 0
    .parameter

    .prologue
    .line 1276
    iput-wide p1, p0, Lcom/inmobi/androidsdk/IMAdView;->D:J

    .line 1277
    return-void
.end method
