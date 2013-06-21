.class Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TuneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lstericson/busybox/donate/adapter/TuneAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private appletCheck:Landroid/widget/CheckBox;

.field private appletDecision:Landroid/widget/CheckBox;

.field private appletRecomendation:Landroid/widget/TextView;

.field private appletState:Landroid/widget/TextView;

.field private appletStatus:Landroid/widget/TextView;

.field private appletSymlinkedTo:Landroid/widget/TextView;

.field private container:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lstericson/busybox/donate/adapter/TuneAdapter;


# direct methods
.method private constructor <init>(Lstericson/busybox/donate/adapter/TuneAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->this$0:Lstericson/busybox/donate/adapter/TuneAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lstericson/busybox/donate/adapter/TuneAdapter;Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;-><init>(Lstericson/busybox/donate/adapter/TuneAdapter;)V

    return-void
.end method

.method static synthetic access$1(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;Landroid/widget/RelativeLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->container:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$10(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$11(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletState:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletSymlinkedTo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$13(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$14(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletRecomendation:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->container:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletCheck:Landroid/widget/CheckBox;

    return-void
.end method

.method static synthetic access$4(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletDecision:Landroid/widget/CheckBox;

    return-void
.end method

.method static synthetic access$5(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletState:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$6(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletStatus:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$7(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletSymlinkedTo:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$8(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletRecomendation:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$9(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletDecision:Landroid/widget/CheckBox;

    return-object v0
.end method
