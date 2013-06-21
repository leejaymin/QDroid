.class public Lcom/nix/apps/androlib/wallpapers/App;
.super Ljava/lang/Object;
.source "App.java"


# static fields
.field public static final AppName:Ljava/lang/String; = "AndrolibWallpapers"

.field public static GGAdsense:Ljava/lang/String;

.field public static GGAnalytics:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-string v0, "0835371735"

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/App;->GGAdsense:Ljava/lang/String;

    .line 6
    const-string v0, "UA-344156-61"

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/App;->GGAnalytics:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
