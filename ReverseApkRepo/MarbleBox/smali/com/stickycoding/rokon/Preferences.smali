.class public Lcom/stickycoding/rokon/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# static fields
.field public static final file:Ljava/lang/String; = "rokon_prefs"

.field public static object:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    invoke-static {}, Lcom/stickycoding/rokon/Rokon;->getActivity()Lcom/stickycoding/rokon/RokonActivity;

    move-result-object v0

    const-string v1, "rokon_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/stickycoding/rokon/RokonActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/stickycoding/rokon/Preferences;->object:Landroid/content/SharedPreferences;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
