.class public Lorg/bpiette/app/Location;
.super Ljava/lang/Object;
.source "Location.java"


# instance fields
.field public categoryID:I

.field public chineseDestination:Ljava/lang/String;

.field public distanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/bpiette/app/Distance;",
            ">;"
        }
    .end annotation
.end field

.field public latitude:Ljava/lang/Double;

.field public location:Ljava/lang/String;

.field public longitude:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILjava/lang/String;)V
    .locals 1
    .parameter "loc"
    .parameter "lat"
    .parameter "longit"
    .parameter "categoryID"
    .parameter "chineseDestination"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/bpiette/app/Location;->location:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lorg/bpiette/app/Location;->latitude:Ljava/lang/Double;

    .line 20
    iput-object p3, p0, Lorg/bpiette/app/Location;->longitude:Ljava/lang/Double;

    .line 21
    iput p4, p0, Lorg/bpiette/app/Location;->categoryID:I

    .line 22
    iput-object p5, p0, Lorg/bpiette/app/Location;->chineseDestination:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bpiette/app/Location;->distanceMap:Ljava/util/Map;

    .line 25
    return-void
.end method


# virtual methods
.method public addDistance(Lorg/bpiette/app/Location;Lorg/bpiette/app/Distance;)V
    .locals 2
    .parameter "loc"
    .parameter "distance"

    .prologue
    .line 29
    iget-object v0, p0, Lorg/bpiette/app/Location;->distanceMap:Ljava/util/Map;

    iget-object v1, p1, Lorg/bpiette/app/Location;->location:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method
