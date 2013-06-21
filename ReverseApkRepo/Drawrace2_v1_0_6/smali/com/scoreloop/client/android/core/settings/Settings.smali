.class public abstract Lcom/scoreloop/client/android/core/settings/Settings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/settings/Settings$Twitter;,
        Lcom/scoreloop/client/android/core/settings/Settings$Facebook;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/scoreloop/client/android/core/settings/CommonSettings$Payment;->a:Ljava/util/Map;

    sput-object v0, Lcom/scoreloop/client/android/core/settings/Settings;->a:Ljava/util/Map;

    .line 42
    const-string v0, "http://p.scoreloop.com/user_terms"

    sput-object v0, Lcom/scoreloop/client/android/core/settings/Settings;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method
