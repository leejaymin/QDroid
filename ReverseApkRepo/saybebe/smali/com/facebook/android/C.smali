.class public Lcom/facebook/android/C;
.super Ljava/lang/Object;
.source "C.java"


# static fields
.field public static D:Z = false

.field public static final FACEBOOK_APP_ID:Ljava/lang/String; = "216539901710800"

.field public static final FACEBOOK_AUTH_CODE:I = 0x7f99

.field public static final LOG_TAG:Ljava/lang/String; = "saybebe"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/android/C;->D:Z

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
