.class Lcom/ui/LapseIt/ProListAdapter$ContentRenderer;
.super Ljava/lang/Object;
.source "ProVersionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/ProListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentRenderer"
.end annotation


# instance fields
.field description:Landroid/widget/TextView;

.field imageContainer:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/ui/LapseIt/ProListAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/ui/LapseIt/ProListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/ui/LapseIt/ProListAdapter$ContentRenderer;->this$0:Lcom/ui/LapseIt/ProListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ui/LapseIt/ProListAdapter;Lcom/ui/LapseIt/ProListAdapter$ContentRenderer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/ui/LapseIt/ProListAdapter$ContentRenderer;-><init>(Lcom/ui/LapseIt/ProListAdapter;)V

    return-void
.end method
