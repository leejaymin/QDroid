.class public final enum Lcom/tapfortap/AdView$Gender;
.super Ljava/lang/Enum;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapfortap/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tapfortap/AdView$Gender;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tapfortap/AdView$Gender;

.field public static final enum FEMALE:Lcom/tapfortap/AdView$Gender;

.field public static final enum MALE:Lcom/tapfortap/AdView$Gender;

.field public static final enum NONE:Lcom/tapfortap/AdView$Gender;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/tapfortap/AdView$Gender;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/tapfortap/AdView$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapfortap/AdView$Gender;->NONE:Lcom/tapfortap/AdView$Gender;

    new-instance v0, Lcom/tapfortap/AdView$Gender;

    const-string v1, "MALE"

    invoke-direct {v0, v1, v3}, Lcom/tapfortap/AdView$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapfortap/AdView$Gender;->MALE:Lcom/tapfortap/AdView$Gender;

    new-instance v0, Lcom/tapfortap/AdView$Gender;

    const-string v1, "FEMALE"

    invoke-direct {v0, v1, v4}, Lcom/tapfortap/AdView$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapfortap/AdView$Gender;->FEMALE:Lcom/tapfortap/AdView$Gender;

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tapfortap/AdView$Gender;

    sget-object v1, Lcom/tapfortap/AdView$Gender;->NONE:Lcom/tapfortap/AdView$Gender;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tapfortap/AdView$Gender;->MALE:Lcom/tapfortap/AdView$Gender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tapfortap/AdView$Gender;->FEMALE:Lcom/tapfortap/AdView$Gender;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tapfortap/AdView$Gender;->$VALUES:[Lcom/tapfortap/AdView$Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapfortap/AdView$Gender;
    .locals 1
    .parameter "name"

    .prologue
    .line 49
    const-class v0, Lcom/tapfortap/AdView$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tapfortap/AdView$Gender;

    return-object v0
.end method

.method public static values()[Lcom/tapfortap/AdView$Gender;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/tapfortap/AdView$Gender;->$VALUES:[Lcom/tapfortap/AdView$Gender;

    invoke-virtual {v0}, [Lcom/tapfortap/AdView$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapfortap/AdView$Gender;

    return-object v0
.end method
