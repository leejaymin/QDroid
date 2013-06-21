.class Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AppletAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lstericson/busybox/donate/adapter/AppletAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private applet:Landroid/widget/TextView;

.field private appletInformation:Landroid/widget/TextView;

.field private appletStatus:Landroid/widget/TextView;

.field private appletSymlinkedTo:Landroid/widget/TextView;

.field private container:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lstericson/busybox/donate/adapter/AppletAdapter;


# direct methods
.method private constructor <init>(Lstericson/busybox/donate/adapter/AppletAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->this$0:Lstericson/busybox/donate/adapter/AppletAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lstericson/busybox/donate/adapter/AppletAdapter;Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;-><init>(Lstericson/busybox/donate/adapter/AppletAdapter;)V

    return-void
.end method

.method static synthetic access$1(Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;Landroid/widget/RelativeLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->container:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$10(Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->container:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2(Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->applet:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$3(Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->appletStatus:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$4(Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->appletSymlinkedTo:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$5(Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->appletInformation:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$6(Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->applet:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->appletSymlinkedTo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->appletStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->appletInformation:Landroid/widget/TextView;

    return-object v0
.end method
