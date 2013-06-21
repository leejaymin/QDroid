.class Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;
.super Ljava/lang/Object;
.source "TuneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lstericson/busybox/donate/adapter/TuneAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InformationHolder"
.end annotation


# instance fields
.field private clean:Landroid/widget/CheckBox;

.field private container:Landroid/widget/LinearLayout;

.field private foundAt:Lstericson/busybox/donate/custom/FontableTextView;

.field private options:Landroid/widget/LinearLayout;

.field private path:Landroid/widget/Spinner;

.field private status:Lstericson/busybox/donate/custom/FontableTextView;

.field final synthetic this$0:Lstericson/busybox/donate/adapter/TuneAdapter;

.field private version:Landroid/widget/Spinner;


# direct methods
.method private constructor <init>(Lstericson/busybox/donate/adapter/TuneAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->this$0:Lstericson/busybox/donate/adapter/TuneAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lstericson/busybox/donate/adapter/TuneAdapter;Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;-><init>(Lstericson/busybox/donate/adapter/TuneAdapter;)V

    return-void
.end method

.method static synthetic access$1(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;Lstericson/busybox/donate/custom/FontableTextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->foundAt:Lstericson/busybox/donate/custom/FontableTextView;

    return-void
.end method

.method static synthetic access$10(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;)Lstericson/busybox/donate/custom/FontableTextView;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->status:Lstericson/busybox/donate/custom/FontableTextView;

    return-object v0
.end method

.method static synthetic access$11(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->options:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$12(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->options:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$13(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->clean:Landroid/widget/CheckBox;

    return-void
.end method

.method static synthetic access$14(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->clean:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;)Lstericson/busybox/donate/custom/FontableTextView;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->foundAt:Lstericson/busybox/donate/custom/FontableTextView;

    return-object v0
.end method

.method static synthetic access$3(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;Landroid/widget/Spinner;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->version:Landroid/widget/Spinner;

    return-void
.end method

.method static synthetic access$4(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->version:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$5(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;Landroid/widget/Spinner;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->path:Landroid/widget/Spinner;

    return-void
.end method

.method static synthetic access$6(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->path:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$7(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->container:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$8(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->container:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$9(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;Lstericson/busybox/donate/custom/FontableTextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->status:Lstericson/busybox/donate/custom/FontableTextView;

    return-void
.end method
