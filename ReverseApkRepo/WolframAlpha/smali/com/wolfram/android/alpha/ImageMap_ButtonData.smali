.class public Lcom/wolfram/android/alpha/ImageMap_ButtonData;
.super Ljava/lang/Object;
.source "ImageMap_ButtonData.java"


# instance fields
.field public Assumption:Ljava/lang/String;

.field public QueryInput:Ljava/lang/String;

.field public Title:Ljava/lang/String;

.field public WebURL:Ljava/lang/String;

.field public imagemap_bottom_line:Landroid/widget/ImageView;

.field public oneclick:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/widget/ImageView;)V
    .locals 0
    .parameter "QueryInput"
    .parameter "WebURL"
    .parameter "Assumption"
    .parameter "Title"
    .parameter "oneclick"
    .parameter "imagemap_bottom_line"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/wolfram/android/alpha/ImageMap_ButtonData;->QueryInput:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/wolfram/android/alpha/ImageMap_ButtonData;->WebURL:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/wolfram/android/alpha/ImageMap_ButtonData;->Assumption:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/wolfram/android/alpha/ImageMap_ButtonData;->Title:Ljava/lang/String;

    .line 28
    iput-boolean p5, p0, Lcom/wolfram/android/alpha/ImageMap_ButtonData;->oneclick:Z

    .line 29
    iput-object p6, p0, Lcom/wolfram/android/alpha/ImageMap_ButtonData;->imagemap_bottom_line:Landroid/widget/ImageView;

    .line 30
    return-void
.end method
