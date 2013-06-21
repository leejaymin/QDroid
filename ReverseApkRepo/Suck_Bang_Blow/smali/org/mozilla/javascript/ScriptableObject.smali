.class public abstract Lorg/mozilla/javascript/ScriptableObject;
.super Ljava/lang/Object;
.source "ScriptableObject.java"

# interfaces
.implements Lorg/mozilla/javascript/Scriptable;
.implements Ljava/io/Serializable;
.implements Lorg/mozilla/javascript/debug/DebuggableObject;
.implements Lorg/mozilla/javascript/ConstProperties;
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/ScriptableObject$ValueCollection;,
        Lorg/mozilla/javascript/ScriptableObject$KeySet;,
        Lorg/mozilla/javascript/ScriptableObject$EntrySet;,
        Lorg/mozilla/javascript/ScriptableObject$GetterSlot;,
        Lorg/mozilla/javascript/ScriptableObject$Slot;
    }
.end annotation


# static fields
.field public static final CONST:I = 0xd

.field public static final DONTENUM:I = 0x2

.field public static final EMPTY:I = 0x0

.field public static final PERMANENT:I = 0x4

.field public static final READONLY:I = 0x1

.field private static final REMOVED:Lorg/mozilla/javascript/ScriptableObject$Slot; = null

.field private static final SLOT_CONVERT_ACCESSOR_TO_DATA:I = 0x6

.field private static final SLOT_MODIFY:I = 0x2

.field private static final SLOT_MODIFY_CONST:I = 0x5

.field private static final SLOT_MODIFY_GETTER_SETTER:I = 0x4

.field private static final SLOT_QUERY:I = 0x1

.field private static final SLOT_REMOVE:I = 0x3

.field public static final UNINITIALIZED_CONST:I = 0x8


# instance fields
.field private volatile associatedValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private count:I

.field private transient firstAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

.field private isExtensible:Z

.field private transient lastAccess:Lorg/mozilla/javascript/ScriptableObject$Slot;

.field private transient lastAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

.field private parentScopeObject:Lorg/mozilla/javascript/Scriptable;

.field private prototypeObject:Lorg/mozilla/javascript/Scriptable;

.field private transient slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 134
    new-instance v0, Lorg/mozilla/javascript/ScriptableObject$Slot;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptableObject$Slot;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/mozilla/javascript/ScriptableObject;->REMOVED:Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 137
    sget-object v0, Lorg/mozilla/javascript/ScriptableObject;->REMOVED:Lorg/mozilla/javascript/ScriptableObject$Slot;

    iput-boolean v3, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->wasDeleted:Z

    .line 138
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    sget-object v0, Lorg/mozilla/javascript/ScriptableObject;->REMOVED:Lorg/mozilla/javascript/ScriptableObject$Slot;

    iput-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->lastAccess:Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/ScriptableObject;->isExtensible:Z

    .line 263
    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V
    .locals 1
    .parameter "scope"
    .parameter "prototype"

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    sget-object v0, Lorg/mozilla/javascript/ScriptableObject;->REMOVED:Lorg/mozilla/javascript/ScriptableObject$Slot;

    iput-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->lastAccess:Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/ScriptableObject;->isExtensible:Z

    .line 267
    if-nez p1, :cond_0

    .line 268
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 270
    :cond_0
    iput-object p1, p0, Lorg/mozilla/javascript/ScriptableObject;->parentScopeObject:Lorg/mozilla/javascript/Scriptable;

    .line 271
    iput-object p2, p0, Lorg/mozilla/javascript/ScriptableObject;->prototypeObject:Lorg/mozilla/javascript/Scriptable;

    .line 272
    return-void
.end method

.method static synthetic access$000(Lorg/mozilla/javascript/ScriptableObject;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lorg/mozilla/javascript/ScriptableObject;->count:I

    return v0
.end method

.method private accessSlot(Ljava/lang/String;II)Lorg/mozilla/javascript/ScriptableObject$Slot;
    .locals 11
    .parameter "name"
    .parameter "index"
    .parameter "accessType"

    .prologue
    .line 2589
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v9

    move v0, v9

    .line 2591
    .local v0, indexOrHash:I
    :goto_0
    const/4 v9, 0x1

    if-eq p3, v9, :cond_0

    const/4 v9, 0x2

    if-eq p3, v9, :cond_0

    const/4 v9, 0x5

    if-eq p3, v9, :cond_0

    const/4 v9, 0x4

    if-eq p3, v9, :cond_0

    const/4 v9, 0x6

    if-ne p3, v9, :cond_1c

    .line 2599
    :cond_0
    iget-object v6, p0, Lorg/mozilla/javascript/ScriptableObject;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2600
    .local v6, slotsLocalRef:[Lorg/mozilla/javascript/ScriptableObject$Slot;
    if-nez v6, :cond_2

    .line 2601
    const/4 v9, 0x1

    if-ne p3, v9, :cond_b

    .line 2602
    const/4 v9, 0x0

    .line 2781
    :goto_1
    return-object v9

    .end local v0           #indexOrHash:I
    .end local v6           #slotsLocalRef:[Lorg/mozilla/javascript/ScriptableObject$Slot;
    :cond_1
    move v0, p2

    .line 2589
    goto :goto_0

    .line 2604
    .restart local v0       #indexOrHash:I
    .restart local v6       #slotsLocalRef:[Lorg/mozilla/javascript/ScriptableObject$Slot;
    :cond_2
    array-length v8, v6

    .line 2605
    .local v8, tableSize:I
    invoke-static {v8, v0}, Lorg/mozilla/javascript/ScriptableObject;->getSlotIndex(II)I

    move-result v5

    .line 2606
    .local v5, slotIndex:I
    aget-object v4, v6, v5

    .line 2607
    .local v4, slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :goto_2
    if-eqz v4, :cond_3

    .line 2608
    iget-object v7, v4, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/String;

    .line 2609
    .local v7, sname:Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 2610
    if-ne v7, p1, :cond_4

    .line 2627
    .end local v7           #sname:Ljava/lang/String;
    :cond_3
    :goto_3
    const/4 v9, 0x1

    if-ne p3, v9, :cond_7

    move-object v9, v4

    .line 2628
    goto :goto_1

    .line 2612
    .restart local v7       #sname:Ljava/lang/String;
    :cond_4
    if-eqz p1, :cond_6

    iget v9, v4, Lorg/mozilla/javascript/ScriptableObject$Slot;->indexOrHash:I

    if-ne v0, v9, :cond_6

    .line 2613
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2617
    iput-object p1, v4, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/String;

    goto :goto_3

    .line 2621
    :cond_5
    if-nez p1, :cond_6

    iget v9, v4, Lorg/mozilla/javascript/ScriptableObject$Slot;->indexOrHash:I

    if-eq v0, v9, :cond_3

    .line 2625
    :cond_6
    iget-object v4, v4, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2626
    goto :goto_2

    .line 2629
    .end local v7           #sname:Ljava/lang/String;
    :cond_7
    const/4 v9, 0x2

    if-ne p3, v9, :cond_8

    .line 2630
    if-eqz v4, :cond_b

    move-object v9, v4

    .line 2631
    goto :goto_1

    .line 2632
    :cond_8
    const/4 v9, 0x4

    if-ne p3, v9, :cond_9

    .line 2633
    instance-of v9, v4, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-eqz v9, :cond_b

    move-object v9, v4

    .line 2634
    goto :goto_1

    .line 2635
    :cond_9
    const/4 v9, 0x5

    if-ne p3, v9, :cond_a

    .line 2636
    if-eqz v4, :cond_b

    move-object v9, v4

    .line 2637
    goto :goto_1

    .line 2638
    :cond_a
    const/4 v9, 0x6

    if-ne p3, v9, :cond_b

    .line 2639
    instance-of v9, v4, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-nez v9, :cond_b

    move-object v9, v4

    .line 2640
    goto :goto_1

    .line 2647
    .end local v4           #slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    .end local v5           #slotIndex:I
    .end local v8           #tableSize:I
    :cond_b
    monitor-enter p0

    .line 2649
    :try_start_0
    iget-object v6, p0, Lorg/mozilla/javascript/ScriptableObject;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2651
    iget v9, p0, Lorg/mozilla/javascript/ScriptableObject;->count:I

    if-nez v9, :cond_10

    .line 2653
    const/4 v9, 0x5

    new-array v6, v9, [Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2654
    iput-object v6, p0, Lorg/mozilla/javascript/ScriptableObject;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2655
    array-length v9, v6

    invoke-static {v9, v0}, Lorg/mozilla/javascript/ScriptableObject;->getSlotIndex(II)I

    move-result v1

    .line 2726
    .local v1, insertPos:I
    :cond_c
    :goto_4
    const/4 v9, 0x4

    if-ne p3, v9, :cond_1b

    new-instance v9, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    const/4 v10, 0x0

    invoke-direct {v9, p1, v0, v10}, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;-><init>(Ljava/lang/String;II)V

    move-object v2, v9

    .line 2729
    .local v2, newSlot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :goto_5
    const/4 v9, 0x5

    if-ne p3, v9, :cond_d

    .line 2730
    const/16 v9, 0xd

    invoke-virtual {v2, v9}, Lorg/mozilla/javascript/ScriptableObject$Slot;->setAttributes(I)V

    .line 2731
    :cond_d
    iget v9, p0, Lorg/mozilla/javascript/ScriptableObject;->count:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/mozilla/javascript/ScriptableObject;->count:I

    .line 2733
    iget-object v9, p0, Lorg/mozilla/javascript/ScriptableObject;->lastAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-eqz v9, :cond_e

    .line 2734
    iget-object v9, p0, Lorg/mozilla/javascript/ScriptableObject;->lastAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    iput-object v2, v9, Lorg/mozilla/javascript/ScriptableObject$Slot;->orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2735
    :cond_e
    iget-object v9, p0, Lorg/mozilla/javascript/ScriptableObject;->firstAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-nez v9, :cond_f

    .line 2736
    iput-object v2, p0, Lorg/mozilla/javascript/ScriptableObject;->firstAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2737
    :cond_f
    iput-object v2, p0, Lorg/mozilla/javascript/ScriptableObject;->lastAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2739
    invoke-static {v6, v2, v1}, Lorg/mozilla/javascript/ScriptableObject;->addKnownAbsentSlot([Lorg/mozilla/javascript/ScriptableObject$Slot;Lorg/mozilla/javascript/ScriptableObject$Slot;I)V

    .line 2740
    monitor-exit p0

    move-object v9, v2

    goto/16 :goto_1

    .line 2657
    .end local v1           #insertPos:I
    .end local v2           #newSlot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :cond_10
    array-length v8, v6

    .line 2658
    .restart local v8       #tableSize:I
    invoke-static {v8, v0}, Lorg/mozilla/javascript/ScriptableObject;->getSlotIndex(II)I

    move-result v1

    .line 2659
    .restart local v1       #insertPos:I
    aget-object v3, v6, v1

    .line 2660
    .local v3, prev:Lorg/mozilla/javascript/ScriptableObject$Slot;
    move-object v4, v3

    .line 2661
    .restart local v4       #slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :goto_6
    if-eqz v4, :cond_11

    .line 2662
    iget v9, v4, Lorg/mozilla/javascript/ScriptableObject$Slot;->indexOrHash:I

    if-ne v9, v0, :cond_15

    iget-object v9, v4, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/String;

    if-eq v9, p1, :cond_11

    if-eqz p1, :cond_15

    iget-object v9, v4, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 2672
    :cond_11
    if-eqz v4, :cond_1a

    .line 2683
    const/4 v9, 0x4

    if-ne p3, v9, :cond_16

    instance-of v9, v4, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-nez v9, :cond_16

    .line 2684
    new-instance v2, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    invoke-virtual {v4}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result v9

    invoke-direct {v2, p1, v0, v9}, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;-><init>(Ljava/lang/String;II)V

    .line 2693
    .restart local v2       #newSlot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :goto_7
    iget-object v9, v4, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    iput-object v9, v2, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    .line 2694
    iget-object v9, v4, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    iput-object v9, v2, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2696
    iget-object v9, p0, Lorg/mozilla/javascript/ScriptableObject;->lastAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-eqz v9, :cond_12

    .line 2697
    iget-object v9, p0, Lorg/mozilla/javascript/ScriptableObject;->lastAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    iput-object v2, v9, Lorg/mozilla/javascript/ScriptableObject$Slot;->orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2698
    :cond_12
    iget-object v9, p0, Lorg/mozilla/javascript/ScriptableObject;->firstAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-nez v9, :cond_13

    .line 2699
    iput-object v2, p0, Lorg/mozilla/javascript/ScriptableObject;->firstAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2700
    :cond_13
    iput-object v2, p0, Lorg/mozilla/javascript/ScriptableObject;->lastAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2702
    if-ne v3, v4, :cond_19

    .line 2703
    aput-object v2, v6, v1

    .line 2708
    :goto_8
    const/4 v9, 0x1

    iput-boolean v9, v4, Lorg/mozilla/javascript/ScriptableObject$Slot;->wasDeleted:Z

    .line 2709
    const/4 v9, 0x0

    iput-object v9, v4, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    .line 2710
    const/4 v9, 0x0

    iput-object v9, v4, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/String;

    .line 2711
    iget-object v9, p0, Lorg/mozilla/javascript/ScriptableObject;->lastAccess:Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-ne v4, v9, :cond_14

    .line 2712
    sget-object v9, Lorg/mozilla/javascript/ScriptableObject;->REMOVED:Lorg/mozilla/javascript/ScriptableObject$Slot;

    iput-object v9, p0, Lorg/mozilla/javascript/ScriptableObject;->lastAccess:Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2714
    :cond_14
    monitor-exit p0

    move-object v9, v2

    goto/16 :goto_1

    .line 2668
    .end local v2           #newSlot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :cond_15
    move-object v3, v4

    .line 2669
    iget-object v4, v4, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    goto :goto_6

    .line 2685
    :cond_16
    const/4 v9, 0x6

    if-ne p3, v9, :cond_17

    instance-of v9, v4, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-eqz v9, :cond_17

    .line 2686
    new-instance v2, Lorg/mozilla/javascript/ScriptableObject$Slot;

    invoke-virtual {v4}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result v9

    invoke-direct {v2, p1, v0, v9}, Lorg/mozilla/javascript/ScriptableObject$Slot;-><init>(Ljava/lang/String;II)V

    .restart local v2       #newSlot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    goto :goto_7

    .line 2687
    .end local v2           #newSlot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :cond_17
    const/4 v9, 0x5

    if-ne p3, v9, :cond_18

    .line 2688
    const/4 v9, 0x0

    monitor-exit p0

    goto/16 :goto_1

    .line 2741
    .end local v1           #insertPos:I
    .end local v3           #prev:Lorg/mozilla/javascript/ScriptableObject$Slot;
    .end local v4           #slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    .end local v8           #tableSize:I
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 2690
    .restart local v1       #insertPos:I
    .restart local v3       #prev:Lorg/mozilla/javascript/ScriptableObject$Slot;
    .restart local v4       #slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    .restart local v8       #tableSize:I
    :cond_18
    :try_start_1
    monitor-exit p0

    move-object v9, v4

    goto/16 :goto_1

    .line 2705
    .restart local v2       #newSlot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :cond_19
    iput-object v2, v3, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    goto :goto_8

    .line 2717
    .end local v2           #newSlot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :cond_1a
    iget v9, p0, Lorg/mozilla/javascript/ScriptableObject;->count:I

    add-int/lit8 v9, v9, 0x1

    mul-int/lit8 v9, v9, 0x4

    array-length v10, v6

    mul-int/lit8 v10, v10, 0x3

    if-le v9, v10, :cond_c

    .line 2718
    array-length v9, v6

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x1

    new-array v6, v9, [Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2719
    iget-object v9, p0, Lorg/mozilla/javascript/ScriptableObject;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    iget v10, p0, Lorg/mozilla/javascript/ScriptableObject;->count:I

    invoke-static {v9, v6, v10}, Lorg/mozilla/javascript/ScriptableObject;->copyTable([Lorg/mozilla/javascript/ScriptableObject$Slot;[Lorg/mozilla/javascript/ScriptableObject$Slot;I)V

    .line 2720
    iput-object v6, p0, Lorg/mozilla/javascript/ScriptableObject;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2721
    array-length v9, v6

    invoke-static {v9, v0}, Lorg/mozilla/javascript/ScriptableObject;->getSlotIndex(II)I

    move-result v1

    goto/16 :goto_4

    .line 2726
    .end local v3           #prev:Lorg/mozilla/javascript/ScriptableObject$Slot;
    .end local v4           #slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    .end local v8           #tableSize:I
    :cond_1b
    new-instance v9, Lorg/mozilla/javascript/ScriptableObject$Slot;

    const/4 v10, 0x0

    invoke-direct {v9, p1, v0, v10}, Lorg/mozilla/javascript/ScriptableObject$Slot;-><init>(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v9

    goto/16 :goto_5

    .line 2743
    .end local v1           #insertPos:I
    .end local v6           #slotsLocalRef:[Lorg/mozilla/javascript/ScriptableObject$Slot;
    :cond_1c
    const/4 v9, 0x3

    if-ne p3, v9, :cond_21

    .line 2744
    monitor-enter p0

    .line 2745
    :try_start_2
    iget-object v6, p0, Lorg/mozilla/javascript/ScriptableObject;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2746
    .restart local v6       #slotsLocalRef:[Lorg/mozilla/javascript/ScriptableObject$Slot;
    iget v9, p0, Lorg/mozilla/javascript/ScriptableObject;->count:I

    if-eqz v9, :cond_1e

    .line 2747
    iget-object v9, p0, Lorg/mozilla/javascript/ScriptableObject;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    array-length v8, v9

    .line 2748
    .restart local v8       #tableSize:I
    invoke-static {v8, v0}, Lorg/mozilla/javascript/ScriptableObject;->getSlotIndex(II)I

    move-result v5

    .line 2749
    .restart local v5       #slotIndex:I
    aget-object v3, v6, v5

    .line 2750
    .restart local v3       #prev:Lorg/mozilla/javascript/ScriptableObject$Slot;
    move-object v4, v3

    .line 2751
    .restart local v4       #slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :goto_9
    if-eqz v4, :cond_1d

    .line 2752
    iget v9, v4, Lorg/mozilla/javascript/ScriptableObject$Slot;->indexOrHash:I

    if-ne v9, v0, :cond_1f

    iget-object v9, v4, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/String;

    if-eq v9, p1, :cond_1d

    if-eqz p1, :cond_1f

    iget-object v9, v4, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 2761
    :cond_1d
    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result v9

    and-int/lit8 v9, v9, 0x4

    if-nez v9, :cond_1e

    .line 2762
    iget v9, p0, Lorg/mozilla/javascript/ScriptableObject;->count:I

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    iput v9, p0, Lorg/mozilla/javascript/ScriptableObject;->count:I

    .line 2764
    if-ne v3, v4, :cond_20

    .line 2765
    iget-object v9, v4, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    aput-object v9, v6, v5

    .line 2772
    :goto_a
    const/4 v9, 0x1

    iput-boolean v9, v4, Lorg/mozilla/javascript/ScriptableObject$Slot;->wasDeleted:Z

    .line 2773
    const/4 v9, 0x0

    iput-object v9, v4, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    .line 2774
    const/4 v9, 0x0

    iput-object v9, v4, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/String;

    .line 2775
    iget-object v9, p0, Lorg/mozilla/javascript/ScriptableObject;->lastAccess:Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-ne v4, v9, :cond_1e

    .line 2776
    sget-object v9, Lorg/mozilla/javascript/ScriptableObject;->REMOVED:Lorg/mozilla/javascript/ScriptableObject$Slot;

    iput-object v9, p0, Lorg/mozilla/javascript/ScriptableObject;->lastAccess:Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2780
    .end local v3           #prev:Lorg/mozilla/javascript/ScriptableObject$Slot;
    .end local v4           #slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    .end local v5           #slotIndex:I
    .end local v8           #tableSize:I
    :cond_1e
    monitor-exit p0

    .line 2781
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 2758
    .restart local v3       #prev:Lorg/mozilla/javascript/ScriptableObject$Slot;
    .restart local v4       #slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    .restart local v5       #slotIndex:I
    .restart local v8       #tableSize:I
    :cond_1f
    move-object v3, v4

    .line 2759
    iget-object v4, v4, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    goto :goto_9

    .line 2767
    :cond_20
    iget-object v9, v4, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    iput-object v9, v3, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    goto :goto_a

    .line 2780
    .end local v3           #prev:Lorg/mozilla/javascript/ScriptableObject$Slot;
    .end local v4           #slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    .end local v5           #slotIndex:I
    .end local v6           #slotsLocalRef:[Lorg/mozilla/javascript/ScriptableObject$Slot;
    .end local v8           #tableSize:I
    :catchall_1
    move-exception v9

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v9

    .line 2784
    :cond_21
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v9

    throw v9
.end method

.method private static addKnownAbsentSlot([Lorg/mozilla/javascript/ScriptableObject$Slot;Lorg/mozilla/javascript/ScriptableObject$Slot;I)V
    .locals 2
    .parameter "slots"
    .parameter "slot"
    .parameter "insertPos"

    .prologue
    .line 2823
    aget-object v1, p0, p2

    if-nez v1, :cond_0

    .line 2824
    aput-object p1, p0, p2

    .line 2832
    :goto_0
    return-void

    .line 2826
    :cond_0
    aget-object v0, p0, p2

    .line 2827
    .local v0, prev:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :goto_1
    iget-object v1, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-eqz v1, :cond_1

    .line 2828
    iget-object v0, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    goto :goto_1

    .line 2830
    :cond_1
    iput-object p1, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    goto :goto_0
.end method

.method static buildClassCtor(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;ZZ)Lorg/mozilla/javascript/BaseFunction;
    .locals 18
    .parameter "scope"
    .parameter
    .parameter "sealed"
    .parameter "mapInheritance"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/mozilla/javascript/Scriptable;",
            ">(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Class",
            "<TT;>;ZZ)",
            "Lorg/mozilla/javascript/BaseFunction;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 1074
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/FunctionObject;->getMethodList(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v15

    .line 1075
    .local v15, methods:[Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v5, v15

    if-ge v4, v5, :cond_4

    .line 1076
    aget-object v7, v15, v4

    .line 1077
    .local v7, method:Ljava/lang/reflect/Method;
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "init"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1075
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1079
    :cond_1
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 1080
    .local v5, parmTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v6, v5

    const/4 v8, 0x3

    if-ne v6, v8, :cond_3

    const/4 v6, 0x0

    aget-object v6, v5, v6

    sget-object v8, Lorg/mozilla/javascript/ScriptRuntime;->ContextClass:Ljava/lang/Class;

    if-ne v6, v8, :cond_3

    const/4 v6, 0x1

    aget-object v6, v5, v6

    sget-object v8, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    if-ne v6, v8, :cond_3

    const/4 v6, 0x2

    aget-object v6, v5, v6

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v6, v8, :cond_3

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1086
    const/16 p1, 0x3

    move/from16 v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/16 p3, 0x0

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    .end local p3
    move-result-object v4

    .end local v4           #i:I
    aput-object v4, p1, p3

    const/16 p3, 0x1

    aput-object p0, p1, p3

    const/16 p0, 0x2

    if-eqz p2, :cond_2

    .end local p0
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .end local p2
    :goto_1
    aput-object p2, p1, p0

    .line 1088
    .local p1, args:[Ljava/lang/Object;
    const/16 p0, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    const/16 p0, 0x0

    .line 1287
    .end local v5           #parmTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v7           #method:Ljava/lang/reflect/Method;
    .end local p1           #args:[Ljava/lang/Object;
    :goto_2
    return-object p0

    .line 1086
    .restart local v5       #parmTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .restart local v7       #method:Ljava/lang/reflect/Method;
    .restart local p2
    :cond_2
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 1091
    .restart local v4       #i:I
    .restart local p0
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .restart local p3
    :cond_3
    array-length v6, v5

    const/4 v8, 0x1

    if-ne v6, v8, :cond_0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    .end local v5           #parmTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    sget-object v6, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    if-ne v5, v6, :cond_0

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1095
    const/16 p1, 0x1

    move/from16 v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/16 p2, 0x0

    aput-object p0, p1, p2

    .line 1096
    .end local p2
    .local p1, args:[Ljava/lang/Object;
    const/16 p0, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    .end local p0
    const/16 p0, 0x0

    goto :goto_2

    .line 1105
    .end local v7           #method:Ljava/lang/reflect/Method;
    .restart local p0
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .restart local p2
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 1106
    .local v6, ctors:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x0

    .line 1107
    .local v5, protoCtor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x0

    :goto_3
    array-length v7, v6

    if-ge v4, v7, :cond_2a

    .line 1108
    aget-object v7, v6, v4

    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_5

    .line 1109
    aget-object v4, v6, v4

    .line 1113
    .end local v5           #protoCtor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .local v4, protoCtor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :goto_4
    if-nez v4, :cond_6

    .line 1114
    const-string p0, "msg.zero.arg.ctor"

    .end local p0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .end local p1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    .line 1107
    .local v4, i:I
    .restart local v5       #protoCtor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .restart local p0
    .restart local p1       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1118
    .end local v5           #protoCtor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .local v4, protoCtor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :cond_6
    sget-object v5, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/mozilla/javascript/Scriptable;

    .line 1119
    .local v17, proto:Lorg/mozilla/javascript/Scriptable;
    invoke-interface/range {v17 .. v17}, Lorg/mozilla/javascript/Scriptable;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 1123
    .local v4, className:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1124
    .local v7, superProto:Lorg/mozilla/javascript/Scriptable;
    if-eqz p3, :cond_29

    .line 1125
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .line 1126
    .local v5, superClass:Ljava/lang/Class;,"Ljava/lang/Class<-TT;>;"
    sget-object v8, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    invoke-virtual {v8, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_29

    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v8

    if-nez v8, :cond_29

    .line 1129
    invoke-static {v5}, Lorg/mozilla/javascript/ScriptableObject;->extendsScriptable(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    .line 1131
    .local v5, superScriptable:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/mozilla/javascript/Scriptable;>;"
    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;ZZ)Ljava/lang/String;

    move-result-object v5

    .line 1133
    .local v5, name:Ljava/lang/String;
    if-eqz v5, :cond_29

    .line 1134
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->getClassPrototype(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p3

    .line 1138
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #superProto:Lorg/mozilla/javascript/Scriptable;
    .local p3, superProto:Lorg/mozilla/javascript/Scriptable;
    :goto_5
    if-nez p3, :cond_7

    .line 1139
    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p3

    .line 1141
    :cond_7
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/mozilla/javascript/Scriptable;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 1146
    const-string p3, "jsFunction_"

    .line 1147
    .local p3, functionPrefix:Ljava/lang/String;
    const-string p3, "jsStaticFunction_"

    .line 1148
    .local p3, staticFunctionPrefix:Ljava/lang/String;
    const-string p3, "jsGet_"

    .line 1149
    .local p3, getterPrefix:Ljava/lang/String;
    const-string p3, "jsSet_"

    .line 1150
    .local p3, setterPrefix:Ljava/lang/String;
    const-string p3, "jsConstructor"

    .line 1152
    .local p3, ctorName:Ljava/lang/String;
    const-class p3, Lorg/mozilla/javascript/annotations/JSConstructor;

    .end local p3           #ctorName:Ljava/lang/String;
    move-object v0, v15

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->findAnnotatedMember([Ljava/lang/reflect/AccessibleObject;Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object p3

    .line 1153
    .local p3, ctorMember:Ljava/lang/reflect/Member;
    if-nez p3, :cond_8

    .line 1154
    const-class p3, Lorg/mozilla/javascript/annotations/JSConstructor;

    .end local p3           #ctorMember:Ljava/lang/reflect/Member;
    move-object v0, v6

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->findAnnotatedMember([Ljava/lang/reflect/AccessibleObject;Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object p3

    .line 1156
    .restart local p3       #ctorMember:Ljava/lang/reflect/Member;
    :cond_8
    if-nez p3, :cond_9

    .line 1157
    const-string p3, "jsConstructor"

    .end local p3           #ctorMember:Ljava/lang/reflect/Member;
    move-object v0, v15

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lorg/mozilla/javascript/FunctionObject;->findSingleMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p3

    .line 1159
    .restart local p3       #ctorMember:Ljava/lang/reflect/Member;
    :cond_9
    if-nez p3, :cond_d

    .line 1160
    array-length v5, v6

    const/4 v7, 0x1

    if-ne v5, v7, :cond_b

    .line 1161
    const/16 p3, 0x0

    aget-object p3, v6, p3

    .line 1168
    :cond_a
    :goto_6
    if-nez p3, :cond_d

    .line 1169
    const-string p0, "msg.ctor.multiple.parms"

    .end local p0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .end local p1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    .line 1162
    .restart local p0
    .restart local p1       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    :cond_b
    array-length v5, v6

    const/4 v7, 0x2

    if-ne v5, v7, :cond_a

    .line 1163
    const/4 v5, 0x0

    aget-object v5, v6, v5

    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_c

    .line 1164
    const/16 p3, 0x1

    aget-object p3, v6, p3

    goto :goto_6

    .line 1165
    :cond_c
    const/4 v5, 0x1

    aget-object v5, v6, v5

    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_a

    .line 1166
    const/16 p3, 0x0

    aget-object p3, v6, p3

    goto :goto_6

    :cond_d
    move-object/from16 v11, p3

    .line 1174
    .end local p3           #ctorMember:Ljava/lang/reflect/Member;
    .local v11, ctorMember:Ljava/lang/reflect/Member;
    new-instance v10, Lorg/mozilla/javascript/FunctionObject;

    move-object v0, v10

    move-object v1, v4

    move-object v2, v11

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/FunctionObject;-><init>(Ljava/lang/String;Ljava/lang/reflect/Member;Lorg/mozilla/javascript/Scriptable;)V

    .line 1175
    .local v10, ctor:Lorg/mozilla/javascript/FunctionObject;
    invoke-virtual {v10}, Lorg/mozilla/javascript/FunctionObject;->isVarArgsMethod()Z

    move-result p1

    .end local p1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_e

    .line 1176
    const-string p0, "msg.varargs.ctor"

    .end local p0
    invoke-interface {v11}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    .line 1179
    .restart local p0
    :cond_e
    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/FunctionObject;->initAsConstructor(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V

    .line 1181
    const/16 p1, 0x0

    .line 1182
    .local p1, finishInit:Ljava/lang/reflect/Method;
    new-instance v16, Ljava/util/HashSet;

    move-object v0, v15

    array-length v0, v0

    move/from16 p3, v0

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 1183
    .local v16, names:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 p3, v15

    .local p3, arr$:[Ljava/lang/reflect/Method;
    move-object/from16 v0, p3

    array-length v0, v0

    move v14, v0

    .local v14, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v13, v4

    .end local v4           #i$:I
    .local v13, i$:I
    move-object/from16 v12, p1

    .end local v6           #ctors:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<*>;"
    .end local p1           #finishInit:Ljava/lang/reflect/Method;
    .local v12, finishInit:Ljava/lang/reflect/Method;
    :goto_7
    if-ge v13, v14, :cond_26

    aget-object v7, p3, v13

    .line 1184
    .local v7, method:Ljava/lang/reflect/Method;
    if-ne v7, v11, :cond_f

    move-object/from16 p1, v12

    .line 1183
    .end local v12           #finishInit:Ljava/lang/reflect/Method;
    .restart local p1       #finishInit:Ljava/lang/reflect/Method;
    :goto_8
    add-int/lit8 v4, v13, 0x1

    .end local v13           #i$:I
    .restart local v4       #i$:I
    move v13, v4

    .end local v4           #i$:I
    .restart local v13       #i$:I
    move-object/from16 v12, p1

    .end local p1           #finishInit:Ljava/lang/reflect/Method;
    .restart local v12       #finishInit:Ljava/lang/reflect/Method;
    goto :goto_7

    .line 1187
    :cond_f
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1188
    .restart local v5       #name:Ljava/lang/String;
    const-string p1, "finishInit"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 1189
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    .line 1190
    .local p1, parmTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    move-object/from16 v0, p1

    array-length v0, v0

    move v4, v0

    const/4 v6, 0x3

    if-ne v4, v6, :cond_10

    const/4 v4, 0x0

    aget-object v4, p1, v4

    sget-object v6, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    if-ne v4, v6, :cond_10

    const/4 v4, 0x1

    aget-object v4, p1, v4

    const-class v6, Lorg/mozilla/javascript/FunctionObject;

    if-ne v4, v6, :cond_10

    const/4 v4, 0x2

    aget-object p1, p1, v4

    .end local p1           #parmTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    sget-object v4, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object v1, v4

    if-ne v0, v1, :cond_10

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p1

    invoke-static/range {p1 .. p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 1196
    move-object/from16 p1, v7

    .line 1197
    .end local v12           #finishInit:Ljava/lang/reflect/Method;
    .local p1, finishInit:Ljava/lang/reflect/Method;
    goto :goto_8

    .line 1201
    .end local p1           #finishInit:Ljava/lang/reflect/Method;
    .restart local v12       #finishInit:Ljava/lang/reflect/Method;
    :cond_10
    const/16 p1, 0x24

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v4, -0x1

    move/from16 v0, p1

    move v1, v4

    if-eq v0, v1, :cond_11

    move-object/from16 p1, v12

    .line 1202
    .end local v12           #finishInit:Ljava/lang/reflect/Method;
    .restart local p1       #finishInit:Ljava/lang/reflect/Method;
    goto :goto_8

    .line 1203
    .end local p1           #finishInit:Ljava/lang/reflect/Method;
    .restart local v12       #finishInit:Ljava/lang/reflect/Method;
    :cond_11
    const-string p1, "jsConstructor"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    move-object/from16 p1, v12

    .line 1204
    .end local v12           #finishInit:Ljava/lang/reflect/Method;
    .restart local p1       #finishInit:Ljava/lang/reflect/Method;
    goto :goto_8

    .line 1206
    .end local p1           #finishInit:Ljava/lang/reflect/Method;
    .restart local v12       #finishInit:Ljava/lang/reflect/Method;
    :cond_12
    const/16 p1, 0x0

    .line 1207
    .local p1, annotation:Ljava/lang/annotation/Annotation;
    const/4 v4, 0x0

    .line 1208
    .local v4, prefix:Ljava/lang/String;
    const-class v6, Lorg/mozilla/javascript/annotations/JSFunction;

    invoke-virtual {v7, v6}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1209
    const-class p1, Lorg/mozilla/javascript/annotations/JSFunction;

    .end local p1           #annotation:Ljava/lang/annotation/Annotation;
    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 1218
    .restart local p1       #annotation:Ljava/lang/annotation/Annotation;
    :cond_13
    :goto_9
    if-nez p1, :cond_14

    .line 1219
    const-string v6, "jsFunction_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1220
    const-string v4, "jsFunction_"

    .line 1231
    :cond_14
    :goto_a
    move-object v0, v5

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptableObject;->getPropertyName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/annotation/Annotation;)Ljava/lang/String;

    move-result-object v6

    .line 1232
    .local v6, propName:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 1233
    const-string p0, "duplicate.defineClass.name"

    .end local p0
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/Context;->reportRuntimeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    .line 1210
    .end local v6           #propName:Ljava/lang/String;
    .restart local p0
    :cond_15
    const-class v6, Lorg/mozilla/javascript/annotations/JSStaticFunction;

    invoke-virtual {v7, v6}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 1211
    const-class p1, Lorg/mozilla/javascript/annotations/JSStaticFunction;

    .end local p1           #annotation:Ljava/lang/annotation/Annotation;
    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .restart local p1       #annotation:Ljava/lang/annotation/Annotation;
    goto :goto_9

    .line 1212
    :cond_16
    const-class v6, Lorg/mozilla/javascript/annotations/JSGetter;

    invoke-virtual {v7, v6}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 1213
    const-class p1, Lorg/mozilla/javascript/annotations/JSGetter;

    .end local p1           #annotation:Ljava/lang/annotation/Annotation;
    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .restart local p1       #annotation:Ljava/lang/annotation/Annotation;
    goto :goto_9

    .line 1214
    :cond_17
    const-class v6, Lorg/mozilla/javascript/annotations/JSSetter;

    invoke-virtual {v7, v6}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_13

    move-object/from16 p1, v12

    .line 1215
    .end local v12           #finishInit:Ljava/lang/reflect/Method;
    .local p1, finishInit:Ljava/lang/reflect/Method;
    goto/16 :goto_8

    .line 1221
    .restart local v12       #finishInit:Ljava/lang/reflect/Method;
    .local p1, annotation:Ljava/lang/annotation/Annotation;
    :cond_18
    const-string v6, "jsStaticFunction_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1222
    const-string v4, "jsStaticFunction_"

    goto :goto_a

    .line 1223
    :cond_19
    const-string v6, "jsGet_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1224
    const-string v4, "jsGet_"

    goto :goto_a

    .line 1225
    :cond_1a
    if-nez p1, :cond_14

    move-object/from16 p1, v12

    .line 1228
    .end local v12           #finishInit:Ljava/lang/reflect/Method;
    .local p1, finishInit:Ljava/lang/reflect/Method;
    goto/16 :goto_8

    .line 1236
    .restart local v6       #propName:Ljava/lang/String;
    .restart local v12       #finishInit:Ljava/lang/reflect/Method;
    .local p1, annotation:Ljava/lang/annotation/Annotation;
    :cond_1b
    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1237
    move-object v5, v6

    .line 1238
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/mozilla/javascript/annotations/JSGetter;

    move v6, v0

    .end local v6           #propName:Ljava/lang/String;
    if-nez v6, :cond_1c

    const-string v6, "jsGet_"

    if-ne v4, v6, :cond_1f

    .line 1239
    :cond_1c
    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/mozilla/javascript/ScriptableObject;

    move/from16 p1, v0

    .end local p1           #annotation:Ljava/lang/annotation/Annotation;
    if-nez p1, :cond_1d

    .line 1240
    const-string p0, "msg.extend.scriptable"

    .end local p0
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/Context;->reportRuntimeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    .line 1244
    .restart local p0
    :cond_1d
    const-string p1, "jsSet_"

    move-object v0, v15

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptableObject;->findSetterMethod([Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 1245
    .local v8, setter:Ljava/lang/reflect/Method;
    if-eqz v8, :cond_1e

    const/16 p1, 0x0

    :goto_b
    or-int/lit8 v9, p1, 0x6

    .line 1249
    .local v9, attr:I
    move-object/from16 v0, v17

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    move-object v4, v0

    .end local v4           #prefix:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;I)V

    move-object/from16 p1, v12

    .line 1252
    .end local v12           #finishInit:Ljava/lang/reflect/Method;
    .local p1, finishInit:Ljava/lang/reflect/Method;
    goto/16 :goto_8

    .line 1245
    .end local v9           #attr:I
    .end local p1           #finishInit:Ljava/lang/reflect/Method;
    .restart local v4       #prefix:Ljava/lang/String;
    .restart local v12       #finishInit:Ljava/lang/reflect/Method;
    :cond_1e
    const/16 p1, 0x1

    goto :goto_b

    .line 1255
    .end local v8           #setter:Ljava/lang/reflect/Method;
    .local p1, annotation:Ljava/lang/annotation/Annotation;
    :cond_1f
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/mozilla/javascript/annotations/JSStaticFunction;

    move/from16 p1, v0

    .end local p1           #annotation:Ljava/lang/annotation/Annotation;
    if-nez p1, :cond_20

    const-string p1, "jsStaticFunction_"

    move-object v0, v4

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_21

    :cond_20
    const/16 p1, 0x1

    move/from16 v4, p1

    .line 1257
    .local v4, isStatic:Z
    :goto_c
    if-eqz v4, :cond_22

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p1

    invoke-static/range {p1 .. p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p1

    if-nez p1, :cond_22

    .line 1258
    const-string p0, "jsStaticFunction must be used with static method."

    .end local p0
    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    .line 1255
    .local v4, prefix:Ljava/lang/String;
    .restart local p0
    :cond_21
    const/16 p1, 0x0

    move/from16 v4, p1

    goto :goto_c

    .line 1262
    .local v4, isStatic:Z
    :cond_22
    new-instance p1, Lorg/mozilla/javascript/FunctionObject;

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v7

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/FunctionObject;-><init>(Ljava/lang/String;Ljava/lang/reflect/Member;Lorg/mozilla/javascript/Scriptable;)V

    .line 1263
    .local p1, f:Lorg/mozilla/javascript/FunctionObject;
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/FunctionObject;->isVarArgsConstructor()Z

    move-result v6

    if-eqz v6, :cond_23

    .line 1264
    const-string p0, "msg.varargs.fun"

    .end local p0
    invoke-interface {v11}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object p1

    .end local p1           #f:Lorg/mozilla/javascript/FunctionObject;
    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    .line 1267
    .restart local p0
    .restart local p1       #f:Lorg/mozilla/javascript/FunctionObject;
    :cond_23
    if-eqz v4, :cond_25

    move-object v4, v10

    .end local v4           #isStatic:Z
    :goto_d
    const/4 v6, 0x2

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p1

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 1268
    if-eqz p2, :cond_24

    .line 1269
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/FunctionObject;->sealObject()V

    :cond_24
    move-object/from16 p1, v12

    .end local v12           #finishInit:Ljava/lang/reflect/Method;
    .local p1, finishInit:Ljava/lang/reflect/Method;
    goto/16 :goto_8

    .restart local v4       #isStatic:Z
    .restart local v12       #finishInit:Ljava/lang/reflect/Method;
    .local p1, f:Lorg/mozilla/javascript/FunctionObject;
    :cond_25
    move-object/from16 v4, v17

    .line 1267
    goto :goto_d

    .line 1274
    .end local v4           #isStatic:Z
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #method:Ljava/lang/reflect/Method;
    .end local p1           #f:Lorg/mozilla/javascript/FunctionObject;
    :cond_26
    if-eqz v12, :cond_27

    .line 1275
    const/16 p1, 0x3

    move/from16 v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p1, v0

    const/16 p3, 0x0

    aput-object p0, p1, p3

    .end local p3           #arr$:[Ljava/lang/reflect/Method;
    const/16 p0, 0x1

    aput-object v10, p1, p0

    .end local p0
    const/16 p0, 0x2

    aput-object v17, p1, p0

    .line 1276
    .local p1, finishArgs:[Ljava/lang/Object;
    const/16 p0, 0x0

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    .end local p1           #finishArgs:[Ljava/lang/Object;
    :cond_27
    if-eqz p2, :cond_28

    .line 1281
    invoke-virtual {v10}, Lorg/mozilla/javascript/FunctionObject;->sealObject()V

    .line 1282
    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/mozilla/javascript/ScriptableObject;

    move/from16 p0, v0

    if-eqz p0, :cond_28

    .line 1283
    check-cast v17, Lorg/mozilla/javascript/ScriptableObject;

    .end local v17           #proto:Lorg/mozilla/javascript/Scriptable;
    invoke-virtual/range {v17 .. v17}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    :cond_28
    move-object/from16 p0, v10

    .line 1287
    goto/16 :goto_2

    .end local v10           #ctor:Lorg/mozilla/javascript/FunctionObject;
    .end local v11           #ctorMember:Ljava/lang/reflect/Member;
    .end local v12           #finishInit:Ljava/lang/reflect/Method;
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v16           #names:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v4, className:Ljava/lang/String;
    .local v6, ctors:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<*>;"
    .local v7, superProto:Lorg/mozilla/javascript/Scriptable;
    .restart local v17       #proto:Lorg/mozilla/javascript/Scriptable;
    .restart local p0
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p3, mapInheritance:Z
    :cond_29
    move-object/from16 p3, v7

    .end local v7           #superProto:Lorg/mozilla/javascript/Scriptable;
    .local p3, superProto:Lorg/mozilla/javascript/Scriptable;
    goto/16 :goto_5

    .end local v17           #proto:Lorg/mozilla/javascript/Scriptable;
    .local v4, i:I
    .local v5, protoCtor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .local p3, mapInheritance:Z
    :cond_2a
    move-object v4, v5

    .end local v5           #protoCtor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .local v4, protoCtor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    goto/16 :goto_4
.end method

.method protected static buildDataDescriptor(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject;
    .locals 5
    .parameter "scope"
    .parameter "value"
    .parameter "attributes"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 220
    new-instance v0, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    .line 221
    .local v0, desc:Lorg/mozilla/javascript/ScriptableObject;
    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V

    .line 223
    const-string v1, "value"

    invoke-virtual {v0, v1, p1, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 224
    const-string v1, "writable"

    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_0

    move v2, v4

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 225
    const-string v1, "enumerable"

    and-int/lit8 v2, p2, 0x2

    if-nez v2, :cond_1

    move v2, v4

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 226
    const-string v1, "configurable"

    and-int/lit8 v2, p2, 0x4

    if-nez v2, :cond_2

    move v2, v4

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 227
    return-object v0

    :cond_0
    move v2, v3

    .line 224
    goto :goto_0

    :cond_1
    move v2, v3

    .line 225
    goto :goto_1

    :cond_2
    move v2, v3

    .line 226
    goto :goto_2
.end method

.method public static callMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "cx"
    .parameter "obj"
    .parameter "methodName"
    .parameter "args"

    .prologue
    .line 2287
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2288
    .local v2, funObj:Ljava/lang/Object;
    instance-of v4, v2, Lorg/mozilla/javascript/Function;

    if-nez v4, :cond_0

    .line 2289
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 2291
    :cond_0
    move-object v0, v2

    check-cast v0, Lorg/mozilla/javascript/Function;

    move-object v1, v0

    .line 2299
    .local v1, fun:Lorg/mozilla/javascript/Function;
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    .line 2300
    .local v3, scope:Lorg/mozilla/javascript/Scriptable;
    if-eqz p0, :cond_1

    .line 2301
    invoke-interface {v1, p0, v3, p1, p3}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2303
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    invoke-static {v4, v1, v3, p1, p3}, Lorg/mozilla/javascript/Context;->call(Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method

.method public static callMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "obj"
    .parameter "methodName"
    .parameter "args"

    .prologue
    .line 2273
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->callMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private changes(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter "currentValue"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x0

    .line 1731
    sget-object v0, Lorg/mozilla/javascript/ScriptableObject;->NOT_FOUND:Ljava/lang/Object;

    if-ne p2, v0, :cond_0

    move v0, v1

    .line 1735
    :goto_0
    return v0

    .line 1732
    :cond_0
    sget-object v0, Lorg/mozilla/javascript/ScriptableObject;->NOT_FOUND:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    .line 1733
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 1735
    :cond_1
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->shallowEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private checkNotSealed(Ljava/lang/String;I)V
    .locals 2
    .parameter "name"
    .parameter "index"

    .prologue
    .line 1939
    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->isSealed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1940
    return-void

    .line 1942
    :cond_0
    if-eqz p1, :cond_1

    move-object v0, p1

    .line 1943
    .local v0, str:Ljava/lang/String;
    :goto_0
    const-string v1, "msg.modify.sealed"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v1

    throw v1

    .line 1942
    .end local v0           #str:Ljava/lang/String;
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method static checkValidAttributes(I)V
    .locals 3
    .parameter "attributes"

    .prologue
    .line 255
    const/16 v0, 0xf

    .line 256
    .local v0, mask:I
    and-int/lit8 v1, p0, -0x10

    if-eqz v1, :cond_0

    .line 257
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 259
    :cond_0
    return-void
.end method

.method private checkValidPropertyDefinition(Lorg/mozilla/javascript/ScriptableObject$Slot;Lorg/mozilla/javascript/ScriptableObject;)V
    .locals 10
    .parameter "slot"
    .parameter "desc"

    .prologue
    const-string v9, "value"

    const-string v8, "set"

    const-string v7, "get"

    const-string v6, "enumerable"

    const-string v5, "configurable"

    .line 1673
    const-string v4, "get"

    invoke-static {p2, v7}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1674
    .local v1, getter:Ljava/lang/Object;
    sget-object v4, Lorg/mozilla/javascript/ScriptableObject;->NOT_FOUND:Ljava/lang/Object;

    if-eq v1, v4, :cond_0

    sget-object v4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq v1, v4, :cond_0

    instance-of v4, v1, Lorg/mozilla/javascript/Callable;

    if-nez v4, :cond_0

    .line 1675
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 1677
    :cond_0
    const-string v4, "set"

    invoke-static {p2, v8}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1678
    .local v3, setter:Ljava/lang/Object;
    sget-object v4, Lorg/mozilla/javascript/ScriptableObject;->NOT_FOUND:Ljava/lang/Object;

    if-eq v3, v4, :cond_1

    sget-object v4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq v3, v4, :cond_1

    instance-of v4, v3, Lorg/mozilla/javascript/Callable;

    if-nez v4, :cond_1

    .line 1679
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 1681
    :cond_1
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ScriptableObject;->isDataDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ScriptableObject;->isAccessorDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1682
    const-string v4, "msg.both.data.and.accessor.desc"

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v4

    throw v4

    .line 1685
    :cond_2
    if-nez p1, :cond_3

    .line 1686
    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "msg.not.extensible"

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v4

    throw v4

    .line 1688
    :cond_3
    iget-object v2, p1, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/String;

    .line 1689
    .local v2, name:Ljava/lang/String;
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 1690
    .local v0, current:Lorg/mozilla/javascript/ScriptableObject;
    const-string v4, "configurable"

    invoke-virtual {v0, v5, v0}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptableObject;->isFalse(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1691
    const-string v4, "configurable"

    invoke-static {p2, v5}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptableObject;->isTrue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1692
    const-string v4, "msg.change.configurable.false.to.true"

    invoke-static {v4, v2}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v4

    throw v4

    .line 1693
    :cond_4
    const-string v4, "enumerable"

    invoke-virtual {v0, v6, v0}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptableObject;->isTrue(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "enumerable"

    invoke-static {p2, v6}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptableObject;->isTrue(Ljava/lang/Object;)Z

    move-result v5

    if-eq v4, v5, :cond_5

    .line 1694
    const-string v4, "msg.change.enumerable.with.configurable.false"

    invoke-static {v4, v2}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v4

    throw v4

    .line 1696
    :cond_5
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ScriptableObject;->isGenericDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1720
    .end local v0           #current:Lorg/mozilla/javascript/ScriptableObject;
    .end local v2           #name:Ljava/lang/String;
    :cond_6
    return-void

    .line 1698
    .restart local v0       #current:Lorg/mozilla/javascript/ScriptableObject;
    .restart local v2       #name:Ljava/lang/String;
    :cond_7
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ScriptableObject;->isDataDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ScriptableObject;->isDataDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1699
    const-string v4, "writable"

    invoke-virtual {v0, v4, v0}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptableObject;->isFalse(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1700
    const-string v4, "writable"

    invoke-static {p2, v4}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptableObject;->isTrue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1701
    const-string v4, "msg.change.writable.false.to.true.with.configurable.false"

    invoke-static {v4, v2}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v4

    throw v4

    .line 1703
    :cond_8
    const-string v4, "value"

    invoke-virtual {v0, v9, v0}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "value"

    invoke-static {p2, v9}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lorg/mozilla/javascript/ScriptableObject;->changes(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1704
    const-string v4, "msg.change.value.with.writable.false"

    invoke-static {v4, v2}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v4

    throw v4

    .line 1706
    :cond_9
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ScriptableObject;->isAccessorDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ScriptableObject;->isAccessorDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1707
    const-string v4, "set"

    invoke-virtual {v0, v8, v0}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lorg/mozilla/javascript/ScriptableObject;->changes(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1708
    const-string v4, "msg.change.setter.with.configurable.false"

    invoke-static {v4, v2}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v4

    throw v4

    .line 1710
    :cond_a
    const-string v4, "get"

    invoke-virtual {v0, v7, v0}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lorg/mozilla/javascript/ScriptableObject;->changes(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1711
    const-string v4, "msg.change.getter.with.configurable.false"

    invoke-static {v4, v2}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v4

    throw v4

    .line 1713
    :cond_b
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ScriptableObject;->isDataDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1714
    const-string v4, "msg.change.property.data.to.accessor.with.configurable.false"

    invoke-static {v4, v2}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v4

    throw v4

    .line 1716
    :cond_c
    const-string v4, "msg.change.property.accessor.to.data.with.configurable.false"

    invoke-static {v4, v2}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v4

    throw v4
.end method

.method private static copyTable([Lorg/mozilla/javascript/ScriptableObject$Slot;[Lorg/mozilla/javascript/ScriptableObject$Slot;I)V
    .locals 6
    .parameter "slots"
    .parameter "newSlots"
    .parameter "count"

    .prologue
    .line 2796
    if-nez p2, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 2798
    :cond_0
    array-length v4, p1

    .line 2799
    .local v4, tableSize:I
    array-length v0, p0

    .line 2801
    .local v0, i:I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 2802
    aget-object v3, p0, v0

    .line 2803
    .local v3, slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :cond_2
    if-eqz v3, :cond_1

    .line 2804
    iget v5, v3, Lorg/mozilla/javascript/ScriptableObject$Slot;->indexOrHash:I

    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptableObject;->getSlotIndex(II)I

    move-result v1

    .line 2805
    .local v1, insertPos:I
    iget-object v2, v3, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2806
    .local v2, next:Lorg/mozilla/javascript/ScriptableObject$Slot;
    invoke-static {p1, v3, v1}, Lorg/mozilla/javascript/ScriptableObject;->addKnownAbsentSlot([Lorg/mozilla/javascript/ScriptableObject$Slot;Lorg/mozilla/javascript/ScriptableObject$Slot;I)V

    .line 2807
    const/4 v5, 0x0

    iput-object v5, v3, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2808
    move-object v3, v2

    .line 2809
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_2

    .line 2810
    return-void
.end method

.method public static defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;ZZ)Ljava/lang/String;
    .locals 3
    .parameter "scope"
    .parameter
    .parameter "sealed"
    .parameter "mapInheritance"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/mozilla/javascript/Scriptable;",
            ">(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Class",
            "<TT;>;ZZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 1058
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->buildClassCtor(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;ZZ)Lorg/mozilla/javascript/BaseFunction;

    move-result-object v0

    .line 1060
    .local v0, ctor:Lorg/mozilla/javascript/BaseFunction;
    if-nez v0, :cond_0

    .line 1061
    const/4 v2, 0x0

    .line 1064
    :goto_0
    return-object v2

    .line 1062
    :cond_0
    invoke-virtual {v0}, Lorg/mozilla/javascript/BaseFunction;->getClassPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    invoke-interface {v2}, Lorg/mozilla/javascript/Scriptable;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 1063
    .local v1, name:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    move-object v2, v1

    .line 1064
    goto :goto_0
.end method

.method public static defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V
    .locals 1
    .parameter "scope"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/mozilla/javascript/Scriptable;",
            ">(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 991
    invoke-static {p0, p1, v0, v0}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;ZZ)Ljava/lang/String;

    .line 992
    return-void
.end method

.method public static defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;Z)V
    .locals 1
    .parameter "scope"
    .parameter
    .parameter "sealed"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/mozilla/javascript/Scriptable;",
            ">(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Class",
            "<TT;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 1022
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;ZZ)Ljava/lang/String;

    .line 1023
    return-void
.end method

.method public static defineConstProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)V
    .locals 4
    .parameter "destination"
    .parameter "propertyName"

    .prologue
    .line 1410
    instance-of v2, p0, Lorg/mozilla/javascript/ConstProperties;

    if-eqz v2, :cond_0

    .line 1411
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/ConstProperties;

    move-object v1, v0

    .line 1412
    .local v1, cp:Lorg/mozilla/javascript/ConstProperties;
    invoke-interface {v1, p1, p0}, Lorg/mozilla/javascript/ConstProperties;->defineConst(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)V

    .line 1415
    .end local v1           #cp:Lorg/mozilla/javascript/ConstProperties;
    :goto_0
    return-void

    .line 1414
    :cond_0
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    const/16 v3, 0xd

    invoke-static {p0, p1, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method private defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;Z)V
    .locals 3
    .parameter "cx"
    .parameter "id"
    .parameter "desc"
    .parameter "checkValid"

    .prologue
    .line 1621
    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v2}, Lorg/mozilla/javascript/ScriptableObject;->getSlot(Lorg/mozilla/javascript/Context;Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object v1

    .line 1623
    .local v1, slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    if-eqz p4, :cond_0

    .line 1624
    invoke-direct {p0, v1, p3}, Lorg/mozilla/javascript/ScriptableObject;->checkValidPropertyDefinition(Lorg/mozilla/javascript/ScriptableObject$Slot;Lorg/mozilla/javascript/ScriptableObject;)V

    .line 1627
    :cond_0
    if-nez v1, :cond_1

    .line 1628
    const/4 v2, 0x2

    invoke-virtual {p0, p1, p2, v2}, Lorg/mozilla/javascript/ScriptableObject;->getSlot(Lorg/mozilla/javascript/Context;Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object v1

    .line 1629
    const/4 v2, 0x7

    invoke-virtual {p0, v2, p3}, Lorg/mozilla/javascript/ScriptableObject;->applyDescriptorToAttributeBitset(ILorg/mozilla/javascript/ScriptableObject;)I

    move-result v0

    .line 1634
    .local v0, attributes:I
    :goto_0
    invoke-direct {p0, p1, v1, p3, v0}, Lorg/mozilla/javascript/ScriptableObject;->defineOwnProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ScriptableObject$Slot;Lorg/mozilla/javascript/ScriptableObject;I)V

    .line 1635
    return-void

    .line 1631
    .end local v0           #attributes:I
    :cond_1
    invoke-virtual {v1}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result v2

    invoke-virtual {p0, v2, p3}, Lorg/mozilla/javascript/ScriptableObject;->applyDescriptorToAttributeBitset(ILorg/mozilla/javascript/ScriptableObject;)I

    move-result v0

    .restart local v0       #attributes:I
    goto :goto_0
.end method

.method private defineOwnProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ScriptableObject$Slot;Lorg/mozilla/javascript/ScriptableObject;I)V
    .locals 9
    .parameter "cx"
    .parameter "slot"
    .parameter "desc"
    .parameter "attributes"

    .prologue
    .line 1638
    iget-object v4, p2, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/String;

    .line 1639
    .local v4, name:Ljava/lang/String;
    iget v3, p2, Lorg/mozilla/javascript/ScriptableObject$Slot;->indexOrHash:I

    .line 1641
    .local v3, index:I
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ScriptableObject;->isAccessorDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1642
    instance-of v7, p2, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-nez v7, :cond_0

    .line 1643
    if-eqz v4, :cond_3

    move-object v7, v4

    :goto_0
    const/4 v8, 0x4

    invoke-virtual {p0, p1, v7, v8}, Lorg/mozilla/javascript/ScriptableObject;->getSlot(Lorg/mozilla/javascript/Context;Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p2

    .line 1646
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    move-object v2, v0

    .line 1648
    .local v2, gslot:Lorg/mozilla/javascript/ScriptableObject$GetterSlot;
    const-string v7, "get"

    invoke-static {p3, v7}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1649
    .local v1, getter:Ljava/lang/Object;
    sget-object v7, Lorg/mozilla/javascript/ScriptableObject;->NOT_FOUND:Ljava/lang/Object;

    if-eq v1, v7, :cond_1

    .line 1650
    iput-object v1, v2, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->getter:Ljava/lang/Object;

    .line 1652
    :cond_1
    const-string v7, "set"

    invoke-static {p3, v7}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1653
    .local v5, setter:Ljava/lang/Object;
    sget-object v7, Lorg/mozilla/javascript/ScriptableObject;->NOT_FOUND:Ljava/lang/Object;

    if-eq v5, v7, :cond_2

    .line 1654
    iput-object v5, v2, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->setter:Ljava/lang/Object;

    .line 1657
    :cond_2
    sget-object v7, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    iput-object v7, v2, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->value:Ljava/lang/Object;

    .line 1658
    invoke-virtual {v2, p4}, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->setAttributes(I)V

    .line 1670
    .end local v1           #getter:Ljava/lang/Object;
    .end local v2           #gslot:Lorg/mozilla/javascript/ScriptableObject$GetterSlot;
    .end local v5           #setter:Ljava/lang/Object;
    :goto_1
    return-void

    .line 1643
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_0

    .line 1660
    :cond_4
    instance-of v7, p2, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-eqz v7, :cond_5

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ScriptableObject;->isDataDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1661
    if-eqz v4, :cond_7

    move-object v7, v4

    :goto_2
    const/4 v8, 0x6

    invoke-virtual {p0, p1, v7, v8}, Lorg/mozilla/javascript/ScriptableObject;->getSlot(Lorg/mozilla/javascript/Context;Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p2

    .line 1664
    :cond_5
    const-string v7, "value"

    invoke-static {p3, v7}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1665
    .local v6, value:Ljava/lang/Object;
    sget-object v7, Lorg/mozilla/javascript/ScriptableObject;->NOT_FOUND:Ljava/lang/Object;

    if-eq v6, v7, :cond_6

    .line 1666
    iput-object v6, p2, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    .line 1668
    :cond_6
    invoke-virtual {p2, p4}, Lorg/mozilla/javascript/ScriptableObject$Slot;->setAttributes(I)V

    goto :goto_1

    .line 1661
    .end local v6           #value:Ljava/lang/Object;
    :cond_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_2
.end method

.method public static defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 3
    .parameter "destination"
    .parameter "propertyName"
    .parameter "value"
    .parameter "attributes"

    .prologue
    .line 1393
    instance-of v2, p0, Lorg/mozilla/javascript/ScriptableObject;

    if-nez v2, :cond_0

    .line 1394
    invoke-interface {p0, p1, p0, p2}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 1399
    :goto_0
    return-void

    .line 1397
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    move-object v1, v0

    .line 1398
    .local v1, so:Lorg/mozilla/javascript/ScriptableObject;
    invoke-virtual {v1, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public static deleteProperty(Lorg/mozilla/javascript/Scriptable;I)Z
    .locals 3
    .parameter "obj"
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 2209
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getBase(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 2210
    .local v0, base:Lorg/mozilla/javascript/Scriptable;
    if-nez v0, :cond_0

    move v1, v2

    .line 2213
    :goto_0
    return v1

    .line 2212
    :cond_0
    invoke-interface {v0, p1}, Lorg/mozilla/javascript/Scriptable;->delete(I)V

    .line 2213
    invoke-interface {v0, p1, p0}, Lorg/mozilla/javascript/Scriptable;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static deleteProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z
    .locals 3
    .parameter "obj"
    .parameter "name"

    .prologue
    const/4 v2, 0x1

    .line 2189
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getBase(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 2190
    .local v0, base:Lorg/mozilla/javascript/Scriptable;
    if-nez v0, :cond_0

    move v1, v2

    .line 2193
    :goto_0
    return v1

    .line 2192
    :cond_0
    invoke-interface {v0, p1}, Lorg/mozilla/javascript/Scriptable;->delete(Ljava/lang/String;)V

    .line 2193
    invoke-interface {v0, p1, p0}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static extendsScriptable(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/mozilla/javascript/Scriptable;",
            ">(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1360
    .local p0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 1362
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static findAnnotatedMember([Ljava/lang/reflect/AccessibleObject;Ljava/lang/Class;)Ljava/lang/reflect/Member;
    .locals 5
    .parameter "members"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/AccessibleObject;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/lang/reflect/Member;"
        }
    .end annotation

    .prologue
    .line 1292
    .local p1, annotation:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/reflect/AccessibleObject;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1293
    .local v3, member:Ljava/lang/reflect/AccessibleObject;
    invoke-virtual {v3, p1}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1294
    check-cast v3, Ljava/lang/reflect/Member;

    .end local v3           #member:Ljava/lang/reflect/AccessibleObject;
    move-object v4, v3

    .line 1297
    :goto_1
    return-object v4

    .line 1292
    .restart local v3       #member:Ljava/lang/reflect/AccessibleObject;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1297
    .end local v3           #member:Ljava/lang/reflect/AccessibleObject;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private findAttributeSlot(Ljava/lang/String;II)Lorg/mozilla/javascript/ScriptableObject$Slot;
    .locals 3
    .parameter "name"
    .parameter "index"
    .parameter "accessType"

    .prologue
    .line 2533
    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->getSlot(Ljava/lang/String;II)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object v0

    .line 2534
    .local v0, slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    if-nez v0, :cond_1

    .line 2535
    if-eqz p1, :cond_0

    move-object v1, p1

    .line 2536
    .local v1, str:Ljava/lang/String;
    :goto_0
    const-string v2, "msg.prop.not.found"

    invoke-static {v2, v1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v2

    throw v2

    .line 2535
    .end local v1           #str:Ljava/lang/String;
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 2538
    :cond_1
    return-object v0
.end method

.method private static findSetterMethod([Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 9
    .parameter "methods"
    .parameter "name"
    .parameter "prefix"

    .prologue
    .line 1303
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1306
    .local v5, newStyleName:Ljava/lang/String;
    move-object v1, p0

    .local v1, arr$:[Ljava/lang/reflect/Method;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    .line 1307
    .local v4, method:Ljava/lang/reflect/Method;
    const-class v7, Lorg/mozilla/javascript/annotations/JSSetter;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/annotations/JSSetter;

    .line 1308
    .local v0, annotation:Lorg/mozilla/javascript/annotations/JSSetter;
    if-eqz v0, :cond_1

    .line 1309
    invoke-interface {v0}, Lorg/mozilla/javascript/annotations/JSSetter;->value()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, ""

    invoke-interface {v0}, Lorg/mozilla/javascript/annotations/JSSetter;->value()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move-object v7, v4

    .line 1321
    .end local v0           #annotation:Lorg/mozilla/javascript/annotations/JSSetter;
    .end local v4           #method:Ljava/lang/reflect/Method;
    :goto_1
    return-object v7

    .line 1306
    .restart local v0       #annotation:Lorg/mozilla/javascript/annotations/JSSetter;
    .restart local v4       #method:Ljava/lang/reflect/Method;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1315
    .end local v0           #annotation:Lorg/mozilla/javascript/annotations/JSSetter;
    .end local v4           #method:Ljava/lang/reflect/Method;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1316
    .local v6, oldStyleName:Ljava/lang/String;
    move-object v1, p0

    array-length v3, v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_4

    aget-object v4, v1, v2

    .line 1317
    .restart local v4       #method:Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v4

    .line 1318
    goto :goto_1

    .line 1316
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1321
    .end local v4           #method:Ljava/lang/reflect/Method;
    :cond_4
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public static getArrayPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .locals 1
    .parameter "scope"

    .prologue
    .line 1832
    const-string v0, "Array"

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptableObject;->getClassPrototype(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0
.end method

.method private static getBase(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;
    .locals 1
    .parameter "obj"
    .parameter "index"

    .prologue
    .line 2320
    :cond_0
    invoke-interface {p0, p1, p0}, Lorg/mozilla/javascript/Scriptable;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2324
    :goto_0
    return-object p0

    .line 2322
    :cond_1
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    .line 2323
    if-nez p0, :cond_0

    goto :goto_0
.end method

.method private static getBase(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;
    .locals 1
    .parameter "obj"
    .parameter "name"

    .prologue
    .line 2310
    :cond_0
    invoke-interface {p0, p1, p0}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2314
    :goto_0
    return-object p0

    .line 2312
    :cond_1
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    .line 2313
    if-nez p0, :cond_0

    goto :goto_0
.end method

.method public static getClassPrototype(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;
    .locals 6
    .parameter "scope"
    .parameter "className"

    .prologue
    const/4 v5, 0x0

    .line 1853
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    .line 1854
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1856
    .local v1, ctor:Ljava/lang/Object;
    instance-of v4, v1, Lorg/mozilla/javascript/BaseFunction;

    if-eqz v4, :cond_0

    .line 1857
    check-cast v1, Lorg/mozilla/javascript/BaseFunction;

    .end local v1           #ctor:Ljava/lang/Object;
    invoke-virtual {v1}, Lorg/mozilla/javascript/BaseFunction;->getPrototypeProperty()Ljava/lang/Object;

    move-result-object v3

    .line 1864
    .local v3, proto:Ljava/lang/Object;
    :goto_0
    instance-of v4, v3, Lorg/mozilla/javascript/Scriptable;

    if-eqz v4, :cond_2

    .line 1865
    check-cast v3, Lorg/mozilla/javascript/Scriptable;

    .end local v3           #proto:Ljava/lang/Object;
    move-object v4, v3

    .line 1867
    :goto_1
    return-object v4

    .line 1858
    .restart local v1       #ctor:Ljava/lang/Object;
    :cond_0
    instance-of v4, v1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v4, :cond_1

    .line 1859
    move-object v0, v1

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    move-object v2, v0

    .line 1860
    .local v2, ctorObj:Lorg/mozilla/javascript/Scriptable;
    const-string v4, "prototype"

    invoke-interface {v2, v4, v2}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    .line 1861
    .restart local v3       #proto:Ljava/lang/Object;
    goto :goto_0

    .end local v2           #ctorObj:Lorg/mozilla/javascript/Scriptable;
    .end local v3           #proto:Ljava/lang/Object;
    :cond_1
    move-object v4, v5

    .line 1862
    goto :goto_1

    .end local v1           #ctor:Ljava/lang/Object;
    .restart local v3       #proto:Ljava/lang/Object;
    :cond_2
    move-object v4, v5

    .line 1867
    goto :goto_1
.end method

.method public static getDefaultValue(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 14
    .parameter "object"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p1, typeHint:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 763
    const/4 v3, 0x0

    .line 764
    .local v3, cx:Lorg/mozilla/javascript/Context;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    const/4 v11, 0x2

    if-ge v6, v11, :cond_12

    .line 766
    sget-object v11, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p1, v11, :cond_2

    .line 767
    if-nez v6, :cond_1

    move v8, v12

    .line 774
    .local v8, tryToString:Z
    :goto_1
    if-eqz v8, :cond_4

    .line 775
    const-string v7, "toString"

    .line 776
    .local v7, methodName:Ljava/lang/String;
    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    .line 812
    .local v2, args:[Ljava/lang/Object;
    :goto_2
    invoke-static {p0, v7}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 813
    .local v10, v:Ljava/lang/Object;
    instance-of v11, v10, Lorg/mozilla/javascript/Function;

    if-nez v11, :cond_d

    .line 764
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v2           #args:[Ljava/lang/Object;
    .end local v7           #methodName:Ljava/lang/String;
    .end local v8           #tryToString:Z
    .end local v10           #v:Ljava/lang/Object;
    :cond_1
    move v8, v13

    .line 767
    goto :goto_1

    .line 769
    :cond_2
    if-ne v6, v12, :cond_3

    move v8, v12

    .restart local v8       #tryToString:Z
    :goto_3
    goto :goto_1

    .end local v8           #tryToString:Z
    :cond_3
    move v8, v13

    goto :goto_3

    .line 778
    .restart local v8       #tryToString:Z
    :cond_4
    const-string v7, "valueOf"

    .line 779
    .restart local v7       #methodName:Ljava/lang/String;
    new-array v2, v12, [Ljava/lang/Object;

    .line 781
    .restart local v2       #args:[Ljava/lang/Object;
    if-nez p1, :cond_5

    .line 782
    const-string v5, "undefined"

    .line 810
    .local v5, hint:Ljava/lang/String;
    :goto_4
    aput-object v5, v2, v13

    goto :goto_2

    .line 783
    .end local v5           #hint:Ljava/lang/String;
    :cond_5
    sget-object v11, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p1, v11, :cond_6

    .line 784
    const-string v5, "string"

    .restart local v5       #hint:Ljava/lang/String;
    goto :goto_4

    .line 785
    .end local v5           #hint:Ljava/lang/String;
    :cond_6
    sget-object v11, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    if-ne p1, v11, :cond_7

    .line 786
    const-string v5, "object"

    .restart local v5       #hint:Ljava/lang/String;
    goto :goto_4

    .line 787
    .end local v5           #hint:Ljava/lang/String;
    :cond_7
    sget-object v11, Lorg/mozilla/javascript/ScriptRuntime;->FunctionClass:Ljava/lang/Class;

    if-ne p1, v11, :cond_8

    .line 788
    const-string v5, "function"

    .restart local v5       #hint:Ljava/lang/String;
    goto :goto_4

    .line 789
    .end local v5           #hint:Ljava/lang/String;
    :cond_8
    sget-object v11, Lorg/mozilla/javascript/ScriptRuntime;->BooleanClass:Ljava/lang/Class;

    if-eq p1, v11, :cond_9

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v11, :cond_a

    .line 792
    :cond_9
    const-string v5, "boolean"

    .restart local v5       #hint:Ljava/lang/String;
    goto :goto_4

    .line 793
    .end local v5           #hint:Ljava/lang/String;
    :cond_a
    sget-object v11, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    if-eq p1, v11, :cond_b

    sget-object v11, Lorg/mozilla/javascript/ScriptRuntime;->ByteClass:Ljava/lang/Class;

    if-eq p1, v11, :cond_b

    sget-object v11, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v11, :cond_b

    sget-object v11, Lorg/mozilla/javascript/ScriptRuntime;->ShortClass:Ljava/lang/Class;

    if-eq p1, v11, :cond_b

    sget-object v11, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v11, :cond_b

    sget-object v11, Lorg/mozilla/javascript/ScriptRuntime;->IntegerClass:Ljava/lang/Class;

    if-eq p1, v11, :cond_b

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v11, :cond_b

    sget-object v11, Lorg/mozilla/javascript/ScriptRuntime;->FloatClass:Ljava/lang/Class;

    if-eq p1, v11, :cond_b

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v11, :cond_b

    sget-object v11, Lorg/mozilla/javascript/ScriptRuntime;->DoubleClass:Ljava/lang/Class;

    if-eq p1, v11, :cond_b

    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v11, :cond_c

    .line 805
    :cond_b
    const-string v5, "number"

    .restart local v5       #hint:Ljava/lang/String;
    goto :goto_4

    .line 807
    .end local v5           #hint:Ljava/lang/String;
    :cond_c
    const-string v11, "msg.invalid.type"

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v11

    throw v11

    .line 815
    .restart local v10       #v:Ljava/lang/Object;
    :cond_d
    move-object v0, v10

    check-cast v0, Lorg/mozilla/javascript/Function;

    move-object v4, v0

    .line 816
    .local v4, fun:Lorg/mozilla/javascript/Function;
    if-nez v3, :cond_e

    .line 817
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v3

    .line 818
    :cond_e
    invoke-interface {v4}, Lorg/mozilla/javascript/Function;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v11

    invoke-interface {v4, v3, v11, p0, v2}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 819
    if-eqz v10, :cond_0

    .line 820
    instance-of v11, v10, Lorg/mozilla/javascript/Scriptable;

    if-nez v11, :cond_f

    move-object v11, v10

    .line 833
    :goto_5
    return-object v11

    .line 823
    :cond_f
    sget-object v11, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    if-eq p1, v11, :cond_10

    sget-object v11, Lorg/mozilla/javascript/ScriptRuntime;->FunctionClass:Ljava/lang/Class;

    if-ne p1, v11, :cond_11

    :cond_10
    move-object v11, v10

    .line 826
    goto :goto_5

    .line 828
    :cond_11
    if-eqz v8, :cond_0

    instance-of v11, v10, Lorg/mozilla/javascript/Wrapper;

    if-eqz v11, :cond_0

    .line 831
    move-object v0, v10

    check-cast v0, Lorg/mozilla/javascript/Wrapper;

    move-object v11, v0

    invoke-interface {v11}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object v9

    .line 832
    .local v9, u:Ljava/lang/Object;
    instance-of v11, v9, Ljava/lang/String;

    if-eqz v11, :cond_0

    move-object v11, v9

    .line 833
    goto :goto_5

    .line 838
    .end local v2           #args:[Ljava/lang/Object;
    .end local v4           #fun:Lorg/mozilla/javascript/Function;
    .end local v7           #methodName:Ljava/lang/String;
    .end local v8           #tryToString:Z
    .end local v9           #u:Ljava/lang/Object;
    .end local v10           #v:Ljava/lang/Object;
    :cond_12
    if-nez p1, :cond_13

    const-string v11, "undefined"

    move-object v1, v11

    .line 839
    .local v1, arg:Ljava/lang/String;
    :goto_6
    const-string v11, "msg.default.value"

    invoke-static {v11, v1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v11

    throw v11

    .line 838
    .end local v1           #arg:Ljava/lang/String;
    :cond_13
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    move-object v1, v11

    goto :goto_6
.end method

.method public static getFunctionPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .locals 1
    .parameter "scope"

    .prologue
    .line 1828
    const-string v0, "Function"

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptableObject;->getClassPrototype(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0
.end method

.method private getImpl(Ljava/lang/String;ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 12
    .parameter "name"
    .parameter "index"
    .parameter "start"

    .prologue
    const/4 v11, 0x1

    .line 2394
    invoke-direct {p0, p1, p2, v11}, Lorg/mozilla/javascript/ScriptableObject;->getSlot(Ljava/lang/String;II)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object v8

    .line 2395
    .local v8, slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    if-nez v8, :cond_0

    .line 2396
    sget-object v10, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    .line 2432
    :goto_0
    return-object v10

    .line 2398
    :cond_0
    instance-of v10, v8, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-nez v10, :cond_1

    .line 2399
    iget-object v10, v8, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    goto :goto_0

    .line 2401
    :cond_1
    move-object v0, v8

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    move-object v10, v0

    iget-object v4, v10, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->getter:Ljava/lang/Object;

    .line 2402
    .local v4, getterObj:Ljava/lang/Object;
    if-eqz v4, :cond_4

    .line 2403
    instance-of v10, v4, Lorg/mozilla/javascript/MemberBox;

    if-eqz v10, :cond_3

    .line 2404
    move-object v0, v4

    check-cast v0, Lorg/mozilla/javascript/MemberBox;

    move-object v7, v0

    .line 2407
    .local v7, nativeGetter:Lorg/mozilla/javascript/MemberBox;
    iget-object v10, v7, Lorg/mozilla/javascript/MemberBox;->delegateTo:Ljava/lang/Object;

    if-nez v10, :cond_2

    .line 2408
    move-object v5, p3

    .line 2409
    .local v5, getterThis:Lorg/mozilla/javascript/Scriptable;
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    .line 2414
    .end local v5           #getterThis:Lorg/mozilla/javascript/Scriptable;
    .local v1, args:[Ljava/lang/Object;
    :goto_1
    invoke-virtual {v7, v5, v1}, Lorg/mozilla/javascript/MemberBox;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_0

    .line 2411
    .end local v1           #args:[Ljava/lang/Object;
    :cond_2
    iget-object v5, v7, Lorg/mozilla/javascript/MemberBox;->delegateTo:Ljava/lang/Object;

    .line 2412
    .local v5, getterThis:Ljava/lang/Object;
    new-array v1, v11, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p3, v1, v10

    .restart local v1       #args:[Ljava/lang/Object;
    goto :goto_1

    .line 2416
    .end local v1           #args:[Ljava/lang/Object;
    .end local v5           #getterThis:Ljava/lang/Object;
    .end local v7           #nativeGetter:Lorg/mozilla/javascript/MemberBox;
    :cond_3
    move-object v0, v4

    check-cast v0, Lorg/mozilla/javascript/Function;

    move-object v3, v0

    .line 2417
    .local v3, f:Lorg/mozilla/javascript/Function;
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v2

    .line 2418
    .local v2, cx:Lorg/mozilla/javascript/Context;
    invoke-interface {v3}, Lorg/mozilla/javascript/Function;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v10

    sget-object v11, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {v3, v2, v10, p3, v11}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_0

    .line 2422
    .end local v2           #cx:Lorg/mozilla/javascript/Context;
    .end local v3           #f:Lorg/mozilla/javascript/Function;
    :cond_4
    iget-object v9, v8, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    .line 2423
    .local v9, value:Ljava/lang/Object;
    instance-of v10, v9, Lorg/mozilla/javascript/LazilyLoadedCtor;

    if-eqz v10, :cond_5

    .line 2424
    move-object v0, v9

    check-cast v0, Lorg/mozilla/javascript/LazilyLoadedCtor;

    move-object v6, v0

    .line 2426
    .local v6, initializer:Lorg/mozilla/javascript/LazilyLoadedCtor;
    :try_start_0
    invoke-virtual {v6}, Lorg/mozilla/javascript/LazilyLoadedCtor;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2428
    invoke-virtual {v6}, Lorg/mozilla/javascript/LazilyLoadedCtor;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 2429
    iput-object v9, v8, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    .end local v6           #initializer:Lorg/mozilla/javascript/LazilyLoadedCtor;
    :cond_5
    move-object v10, v9

    .line 2432
    goto :goto_0

    .line 2428
    .restart local v6       #initializer:Lorg/mozilla/javascript/LazilyLoadedCtor;
    :catchall_0
    move-exception v10

    invoke-virtual {v6}, Lorg/mozilla/javascript/LazilyLoadedCtor;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 2429
    iput-object v9, v8, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    throw v10
.end method

.method public static getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .locals 1
    .parameter "scope"

    .prologue
    .line 1820
    const-string v0, "Object"

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptableObject;->getClassPrototype(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0
.end method

.method public static getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;
    .locals 3
    .parameter "obj"
    .parameter "index"

    .prologue
    .line 2015
    move-object v1, p0

    .line 2018
    .local v1, start:Lorg/mozilla/javascript/Scriptable;
    :cond_0
    invoke-interface {p0, p1, v1}, Lorg/mozilla/javascript/Scriptable;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    .line 2019
    .local v0, result:Ljava/lang/Object;
    sget-object v2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v2, :cond_1

    .line 2023
    :goto_0
    return-object v0

    .line 2021
    :cond_1
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    .line 2022
    if-nez p0, :cond_0

    goto :goto_0
.end method

.method public static getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "obj"
    .parameter "name"

    .prologue
    .line 1960
    move-object v1, p0

    .line 1963
    .local v1, start:Lorg/mozilla/javascript/Scriptable;
    :cond_0
    invoke-interface {p0, p1, v1}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    .line 1964
    .local v0, result:Ljava/lang/Object;
    sget-object v2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v2, :cond_1

    .line 1968
    :goto_0
    return-object v0

    .line 1966
    :cond_1
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    .line 1967
    if-nez p0, :cond_0

    goto :goto_0
.end method

.method public static getPropertyIds(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;
    .locals 6
    .parameter "obj"

    .prologue
    .line 2227
    if-nez p0, :cond_0

    .line 2228
    sget-object v4, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    .line 2259
    :goto_0
    return-object v4

    .line 2230
    :cond_0
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v3

    .line 2231
    .local v3, result:[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 2233
    .local v2, map:Lorg/mozilla/javascript/ObjToIntMap;
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    .line 2234
    if-nez p0, :cond_3

    .line 2256
    if-eqz v2, :cond_2

    .line 2257
    invoke-virtual {v2}, Lorg/mozilla/javascript/ObjToIntMap;->getKeys()[Ljava/lang/Object;

    move-result-object v3

    :cond_2
    move-object v4, v3

    .line 2259
    goto :goto_0

    .line 2237
    :cond_3
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v1

    .line 2238
    .local v1, ids:[Ljava/lang/Object;
    array-length v4, v1

    if-eqz v4, :cond_1

    .line 2241
    if-nez v2, :cond_6

    .line 2242
    array-length v4, v3

    if-nez v4, :cond_4

    .line 2243
    move-object v3, v1

    .line 2244
    goto :goto_1

    .line 2246
    :cond_4
    new-instance v2, Lorg/mozilla/javascript/ObjToIntMap;

    .end local v2           #map:Lorg/mozilla/javascript/ObjToIntMap;
    array-length v4, v3

    array-length v5, v1

    add-int/2addr v4, v5

    invoke-direct {v2, v4}, Lorg/mozilla/javascript/ObjToIntMap;-><init>(I)V

    .line 2247
    .restart local v2       #map:Lorg/mozilla/javascript/ObjToIntMap;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    array-length v4, v3

    if-eq v0, v4, :cond_5

    .line 2248
    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2247
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2250
    :cond_5
    const/4 v3, 0x0

    .line 2252
    .end local v0           #i:I
    :cond_6
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    array-length v4, v1

    if-eq v0, v4, :cond_1

    .line 2253
    aget-object v4, v1, v0

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2252
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private static getPropertyName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/annotation/Annotation;)Ljava/lang/String;
    .locals 5
    .parameter "methodName"
    .parameter "prefix"
    .parameter "annotation"

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1327
    if-eqz p1, :cond_0

    .line 1328
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1354
    .end local p2
    :goto_0
    return-object v1

    .line 1330
    .restart local p2
    :cond_0
    const/4 v0, 0x0

    .line 1331
    .local v0, propName:Ljava/lang/String;
    instance-of v1, p2, Lorg/mozilla/javascript/annotations/JSGetter;

    if-eqz v1, :cond_6

    .line 1332
    check-cast p2, Lorg/mozilla/javascript/annotations/JSGetter;

    .end local p2
    invoke-interface {p2}, Lorg/mozilla/javascript/annotations/JSGetter;->value()Ljava/lang/String;

    move-result-object v0

    .line 1333
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 1334
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_2

    const-string v1, "get"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1335
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1336
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1337
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_5

    .line 1338
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1351
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 1352
    :cond_3
    move-object v0, p0

    :cond_4
    move-object v1, v0

    .line 1354
    goto :goto_0

    .line 1339
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1346
    .restart local p2
    :cond_6
    instance-of v1, p2, Lorg/mozilla/javascript/annotations/JSFunction;

    if-eqz v1, :cond_7

    .line 1347
    check-cast p2, Lorg/mozilla/javascript/annotations/JSFunction;

    .end local p2
    invoke-interface {p2}, Lorg/mozilla/javascript/annotations/JSFunction;->value()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1348
    .restart local p2
    :cond_7
    instance-of v1, p2, Lorg/mozilla/javascript/annotations/JSStaticFunction;

    if-eqz v1, :cond_2

    .line 1349
    check-cast p2, Lorg/mozilla/javascript/annotations/JSStaticFunction;

    .end local p2
    invoke-interface {p2}, Lorg/mozilla/javascript/annotations/JSStaticFunction;->value()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getSlot(Ljava/lang/String;II)Lorg/mozilla/javascript/ScriptableObject$Slot;
    .locals 3
    .parameter "name"
    .parameter "index"
    .parameter "accessType"

    .prologue
    .line 2554
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->lastAccess:Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2555
    .local v0, slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    if-eqz p1, :cond_2

    .line 2556
    iget-object v2, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/String;

    if-eq p1, v2, :cond_3

    .line 2579
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->accessSlot(Ljava/lang/String;II)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object v0

    .line 2580
    if-eqz v0, :cond_1

    .line 2582
    iput-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->lastAccess:Lorg/mozilla/javascript/ScriptableObject$Slot;

    :cond_1
    move-object v1, v0

    .line 2584
    .end local v0           #slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    .local v1, slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :goto_0
    return-object v1

    .line 2561
    .end local v1           #slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    .restart local v0       #slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :cond_2
    iget-object v2, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/String;

    if-nez v2, :cond_0

    iget v2, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->indexOrHash:I

    if-ne p2, v2, :cond_0

    .line 2565
    :cond_3
    iget-boolean v2, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->wasDeleted:Z

    if-nez v2, :cond_0

    .line 2568
    const/4 v2, 0x4

    if-ne p3, v2, :cond_4

    instance-of v2, v0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-eqz v2, :cond_0

    .line 2572
    :cond_4
    const/4 v2, 0x6

    if-ne p3, v2, :cond_5

    instance-of v2, v0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-nez v2, :cond_0

    :cond_5
    move-object v1, v0

    .line 2576
    .end local v0           #slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    .restart local v1       #slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    goto :goto_0
.end method

.method private static getSlotIndex(II)I
    .locals 1
    .parameter "tableSize"
    .parameter "indexOrHash"

    .prologue
    .line 2790
    const v0, 0x7fffffff

    and-int/2addr v0, p1

    rem-int/2addr v0, p0

    return v0
.end method

.method public static getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .locals 1
    .parameter "obj"

    .prologue
    .line 1882
    :goto_0
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 1883
    .local v0, parent:Lorg/mozilla/javascript/Scriptable;
    if-nez v0, :cond_0

    .line 1884
    return-object p0

    .line 1886
    :cond_0
    move-object p0, v0

    .line 1887
    goto :goto_0
.end method

.method public static getTopScopeValue(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "scope"
    .parameter "key"

    .prologue
    .line 2353
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    .line 2355
    :cond_0
    instance-of v3, p0, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v3, :cond_1

    .line 2356
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    move-object v1, v0

    .line 2357
    .local v1, so:Lorg/mozilla/javascript/ScriptableObject;
    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ScriptableObject;->getAssociatedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2358
    .local v2, value:Ljava/lang/Object;
    if-eqz v2, :cond_1

    move-object v3, v2

    .line 2364
    .end local v1           #so:Lorg/mozilla/javascript/ScriptableObject;
    .end local v2           #value:Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 2362
    :cond_1
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    .line 2363
    if-nez p0, :cond_0

    .line 2364
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getTypedProperty(Lorg/mozilla/javascript/Scriptable;ILjava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter "s"
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mozilla/javascript/Scriptable;",
            "I",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1991
    .local p2, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v0

    .line 1992
    .local v0, val:Ljava/lang/Object;
    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 1993
    const/4 v0, 0x0

    .line 1995
    .end local v0           #val:Ljava/lang/Object;
    :cond_0
    invoke-static {v0, p2}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static getTypedProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter "s"
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 2043
    .local p2, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2044
    .local v0, val:Ljava/lang/Object;
    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 2045
    const/4 v0, 0x0

    .line 2047
    .end local v0           #val:Ljava/lang/Object;
    :cond_0
    invoke-static {v0, p2}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static hasProperty(Lorg/mozilla/javascript/Scriptable;I)Z
    .locals 1
    .parameter "obj"
    .parameter "index"

    .prologue
    .line 2103
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getBase(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z
    .locals 1
    .parameter "obj"
    .parameter "name"

    .prologue
    .line 2063
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getBase(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isFalse(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 1727
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->isTrue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isTrue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 1723
    sget-object v0, Lorg/mozilla/javascript/ScriptableObject;->NOT_FOUND:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static putConstProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "obj"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 2146
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getBase(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 2147
    .local v0, base:Lorg/mozilla/javascript/Scriptable;
    if-nez v0, :cond_0

    .line 2148
    move-object v0, p0

    .line 2149
    :cond_0
    instance-of v1, v0, Lorg/mozilla/javascript/ConstProperties;

    if-eqz v1, :cond_1

    .line 2150
    check-cast v0, Lorg/mozilla/javascript/ConstProperties;

    .end local v0           #base:Lorg/mozilla/javascript/Scriptable;
    invoke-interface {v0, p1, p0, p2}, Lorg/mozilla/javascript/ConstProperties;->putConst(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 2151
    :cond_1
    return-void
.end method

.method private putImpl(Ljava/lang/String;ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Z
    .locals 21
    .parameter "name"
    .parameter "index"
    .parameter "start"
    .parameter "value"
    .parameter "constFlag"

    .prologue
    .line 2450
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    if-eq v0, v1, :cond_0

    .line 2451
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->getSlot(Ljava/lang/String;II)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object v15

    .line 2452
    .local v15, slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    if-nez v15, :cond_5

    .line 2453
    const/16 v18, 0x0

    .line 2527
    :goto_0
    return v18

    .line 2455
    .end local v15           #slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result v18

    if-nez v18, :cond_1

    .line 2456
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->getSlot(Ljava/lang/String;II)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object v15

    .line 2457
    .restart local v15       #slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    if-nez v15, :cond_5

    .line 2458
    const/16 v18, 0x1

    goto :goto_0

    .line 2461
    .end local v15           #slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :cond_1
    invoke-direct/range {p0 .. p2}, Lorg/mozilla/javascript/ScriptableObject;->checkNotSealed(Ljava/lang/String;I)V

    .line 2463
    if-eqz p5, :cond_4

    .line 2464
    const/16 v18, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->getSlot(Ljava/lang/String;II)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object v15

    .line 2465
    .restart local v15       #slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    invoke-virtual {v15}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result v7

    .line 2466
    .local v7, attr:I
    and-int/lit8 v18, v7, 0x1

    if-nez v18, :cond_2

    .line 2467
    const-string v18, "msg.var.redecl"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v18

    throw v18

    .line 2468
    :cond_2
    and-int/lit8 v18, v7, 0x8

    if-eqz v18, :cond_3

    .line 2469
    move-object/from16 v0, p4

    move-object v1, v15

    iput-object v0, v1, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    .line 2471
    const/16 v18, 0x8

    move/from16 v0, p5

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 2472
    and-int/lit8 v18, v7, -0x9

    move-object v0, v15

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ScriptableObject$Slot;->setAttributes(I)V

    .line 2474
    :cond_3
    const/16 v18, 0x1

    goto :goto_0

    .line 2476
    .end local v7           #attr:I
    .end local v15           #slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :cond_4
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->getSlot(Ljava/lang/String;II)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object v15

    .line 2478
    .restart local v15       #slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :cond_5
    move-object v0, v15

    instance-of v0, v0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 2479
    move-object v0, v15

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    move-object v10, v0

    .line 2480
    .local v10, getterSlot:Lorg/mozilla/javascript/ScriptableObject$GetterSlot;
    iget-object v13, v10, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->setter:Ljava/lang/Object;

    .line 2481
    .local v13, setterObj:Ljava/lang/Object;
    if-nez v13, :cond_7

    .line 2482
    move-object v0, v10

    iget-object v0, v0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->getter:Ljava/lang/Object;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    .line 2483
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v18

    const/16 v19, 0xb

    invoke-virtual/range {v18 .. v19}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 2486
    const-string v18, "msg.set.prop.no.setter"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v18

    throw v18

    .line 2490
    :cond_6
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 2493
    :cond_7
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v8

    .line 2494
    .local v8, cx:Lorg/mozilla/javascript/Context;
    move-object v0, v13

    instance-of v0, v0, Lorg/mozilla/javascript/MemberBox;

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 2495
    move-object v0, v13

    check-cast v0, Lorg/mozilla/javascript/MemberBox;

    move-object v11, v0

    .line 2496
    .local v11, nativeSetter:Lorg/mozilla/javascript/MemberBox;
    iget-object v12, v11, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    .line 2499
    .local v12, pTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    move-object v0, v12

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    sub-int v18, v18, v19

    aget-object v17, v12, v18

    .line 2500
    .local v17, valueType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static/range {v17 .. v17}, Lorg/mozilla/javascript/FunctionObject;->getTypeTag(Ljava/lang/Class;)I

    move-result v16

    .line 2501
    .local v16, tag:I
    move-object v0, v8

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/FunctionObject;->convertArg(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    .line 2505
    .local v5, actualArg:Ljava/lang/Object;
    move-object v0, v11

    iget-object v0, v0, Lorg/mozilla/javascript/MemberBox;->delegateTo:Ljava/lang/Object;

    move-object/from16 v18, v0

    if-nez v18, :cond_8

    .line 2506
    move-object/from16 v14, p3

    .line 2507
    .local v14, setterThis:Lorg/mozilla/javascript/Scriptable;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object v6, v0

    const/16 v18, 0x0

    aput-object v5, v6, v18

    .line 2512
    .end local v14           #setterThis:Lorg/mozilla/javascript/Scriptable;
    .local v6, args:[Ljava/lang/Object;
    :goto_1
    invoke-virtual {v11, v14, v6}, Lorg/mozilla/javascript/MemberBox;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2518
    .end local v5           #actualArg:Ljava/lang/Object;
    .end local v6           #args:[Ljava/lang/Object;
    .end local v11           #nativeSetter:Lorg/mozilla/javascript/MemberBox;
    .end local v12           #pTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v16           #tag:I
    .end local v17           #valueType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_2
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 2509
    .restart local v5       #actualArg:Ljava/lang/Object;
    .restart local v11       #nativeSetter:Lorg/mozilla/javascript/MemberBox;
    .restart local v12       #pTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .restart local v16       #tag:I
    .restart local v17       #valueType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_8
    iget-object v14, v11, Lorg/mozilla/javascript/MemberBox;->delegateTo:Ljava/lang/Object;

    .line 2510
    .local v14, setterThis:Ljava/lang/Object;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object v6, v0

    const/16 v18, 0x0

    aput-object p3, v6, v18

    const/16 v18, 0x1

    aput-object v5, v6, v18

    .restart local v6       #args:[Ljava/lang/Object;
    goto :goto_1

    .line 2514
    .end local v5           #actualArg:Ljava/lang/Object;
    .end local v6           #args:[Ljava/lang/Object;
    .end local v11           #nativeSetter:Lorg/mozilla/javascript/MemberBox;
    .end local v12           #pTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v14           #setterThis:Ljava/lang/Object;
    .end local v16           #tag:I
    .end local v17           #valueType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_9
    move-object v0, v13

    check-cast v0, Lorg/mozilla/javascript/Function;

    move-object v9, v0

    .line 2515
    .local v9, f:Lorg/mozilla/javascript/Function;
    invoke-interface {v9}, Lorg/mozilla/javascript/Function;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object p4, v19, v20

    move-object v0, v9

    move-object v1, v8

    move-object/from16 v2, v18

    move-object/from16 v3, p3

    move-object/from16 v4, v19

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2520
    .end local v8           #cx:Lorg/mozilla/javascript/Context;
    .end local v9           #f:Lorg/mozilla/javascript/Function;
    .end local v10           #getterSlot:Lorg/mozilla/javascript/ScriptableObject$GetterSlot;
    .end local v13           #setterObj:Ljava/lang/Object;
    :cond_a
    invoke-virtual {v15}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result v18

    and-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_b

    .line 2521
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 2523
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    if-ne v0, v1, :cond_c

    .line 2524
    move-object/from16 v0, p4

    move-object v1, v15

    iput-object v0, v1, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    .line 2525
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 2527
    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method public static putProperty(Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)V
    .locals 1
    .parameter "obj"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2170
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getBase(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 2171
    .local v0, base:Lorg/mozilla/javascript/Scriptable;
    if-nez v0, :cond_0

    .line 2172
    move-object v0, p0

    .line 2173
    :cond_0
    invoke-interface {v0, p1, p0, p2}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 2174
    return-void
.end method

.method public static putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "obj"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 2123
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getBase(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 2124
    .local v0, base:Lorg/mozilla/javascript/Scriptable;
    if-nez v0, :cond_0

    .line 2125
    move-object v0, p0

    .line 2126
    :cond_0
    invoke-interface {v0, p1, p0, p2}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 2127
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 7
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 2912
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2913
    sget-object v5, Lorg/mozilla/javascript/ScriptableObject;->REMOVED:Lorg/mozilla/javascript/ScriptableObject$Slot;

    iput-object v5, p0, Lorg/mozilla/javascript/ScriptableObject;->lastAccess:Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2915
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    .line 2916
    .local v4, tableSize:I
    if-eqz v4, :cond_2

    .line 2917
    new-array v5, v4, [Lorg/mozilla/javascript/ScriptableObject$Slot;

    iput-object v5, p0, Lorg/mozilla/javascript/ScriptableObject;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2918
    iget v1, p0, Lorg/mozilla/javascript/ScriptableObject;->count:I

    .line 2919
    .local v1, objectsCount:I
    if-gez v1, :cond_0

    .line 2921
    xor-int/lit8 v1, v1, -0x1

    .line 2923
    :cond_0
    const/4 v2, 0x0

    .line 2924
    .local v2, prev:Lorg/mozilla/javascript/ScriptableObject$Slot;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-eq v0, v1, :cond_2

    .line 2925
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mozilla/javascript/ScriptableObject$Slot;

    iput-object v5, p0, Lorg/mozilla/javascript/ScriptableObject;->lastAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2926
    if-nez v0, :cond_1

    .line 2927
    iget-object v5, p0, Lorg/mozilla/javascript/ScriptableObject;->lastAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    iput-object v5, p0, Lorg/mozilla/javascript/ScriptableObject;->firstAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2931
    :goto_1
    iget-object v5, p0, Lorg/mozilla/javascript/ScriptableObject;->lastAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    iget v5, v5, Lorg/mozilla/javascript/ScriptableObject$Slot;->indexOrHash:I

    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptableObject;->getSlotIndex(II)I

    move-result v3

    .line 2932
    .local v3, slotIndex:I
    iget-object v5, p0, Lorg/mozilla/javascript/ScriptableObject;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    iget-object v6, p0, Lorg/mozilla/javascript/ScriptableObject;->lastAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    invoke-static {v5, v6, v3}, Lorg/mozilla/javascript/ScriptableObject;->addKnownAbsentSlot([Lorg/mozilla/javascript/ScriptableObject$Slot;Lorg/mozilla/javascript/ScriptableObject$Slot;I)V

    .line 2933
    iget-object v2, p0, Lorg/mozilla/javascript/ScriptableObject;->lastAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2924
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2929
    .end local v3           #slotIndex:I
    :cond_1
    iget-object v5, p0, Lorg/mozilla/javascript/ScriptableObject;->lastAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    iput-object v5, v2, Lorg/mozilla/javascript/ScriptableObject$Slot;->orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;

    goto :goto_1

    .line 2936
    .end local v0           #i:I
    .end local v1           #objectsCount:I
    .end local v2           #prev:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :cond_2
    return-void
.end method

.method public static redefineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Z)V
    .locals 4
    .parameter "obj"
    .parameter "name"
    .parameter "isConst"

    .prologue
    .line 2078
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getBase(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    .line 2079
    .local v1, base:Lorg/mozilla/javascript/Scriptable;
    if-nez v1, :cond_1

    .line 2089
    :cond_0
    return-void

    .line 2081
    :cond_1
    instance-of v3, v1, Lorg/mozilla/javascript/ConstProperties;

    if-eqz v3, :cond_2

    .line 2082
    move-object v0, v1

    check-cast v0, Lorg/mozilla/javascript/ConstProperties;

    move-object v2, v0

    .line 2084
    .local v2, cp:Lorg/mozilla/javascript/ConstProperties;
    invoke-interface {v2, p1}, Lorg/mozilla/javascript/ConstProperties;->isConst(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2085
    const-string v3, "msg.const.redecl"

    invoke-static {v3, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v3

    throw v3

    .line 2087
    .end local v2           #cp:Lorg/mozilla/javascript/ConstProperties;
    :cond_2
    if-eqz p2, :cond_0

    .line 2088
    const-string v3, "msg.var.redecl"

    invoke-static {v3, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v3

    throw v3
.end method

.method private setGetterOrSetter(Ljava/lang/String;ILorg/mozilla/javascript/Callable;ZZ)V
    .locals 2
    .parameter "name"
    .parameter "index"
    .parameter "getterOrSetter"
    .parameter "isSetter"
    .parameter "force"

    .prologue
    .line 595
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 596
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 598
    :cond_0
    if-nez p5, :cond_1

    .line 599
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->checkNotSealed(Ljava/lang/String;I)V

    .line 603
    :cond_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 604
    const/4 v1, 0x4

    invoke-direct {p0, p1, p2, v1}, Lorg/mozilla/javascript/ScriptableObject;->getSlot(Ljava/lang/String;II)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    .line 611
    .local v0, gslot:Lorg/mozilla/javascript/ScriptableObject$GetterSlot;
    :cond_2
    if-nez p5, :cond_3

    .line 612
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->checkNotReadonly()V

    .line 614
    :cond_3
    if-eqz p4, :cond_5

    .line 615
    iput-object p3, v0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->setter:Ljava/lang/Object;

    .line 619
    :goto_0
    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    iput-object v1, v0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->value:Ljava/lang/Object;

    .line 620
    :goto_1
    return-void

    .line 606
    .end local v0           #gslot:Lorg/mozilla/javascript/ScriptableObject$GetterSlot;
    :cond_4
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lorg/mozilla/javascript/ScriptableObject;->getSlot(Ljava/lang/String;II)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    .line 607
    .restart local v0       #gslot:Lorg/mozilla/javascript/ScriptableObject$GetterSlot;
    if-nez v0, :cond_2

    goto :goto_1

    .line 617
    :cond_5
    iput-object p3, v0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->getter:Ljava/lang/Object;

    goto :goto_0
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2879
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2880
    iget v1, p0, Lorg/mozilla/javascript/ScriptableObject;->count:I

    .line 2881
    .local v1, objectsCount:I
    if-gez v1, :cond_0

    .line 2883
    xor-int/lit8 v1, v1, -0x1

    .line 2885
    :cond_0
    if-nez v1, :cond_2

    .line 2886
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2907
    :cond_1
    monitor-exit p0

    return-void

    .line 2888
    :cond_2
    :try_start_1
    iget-object v3, p0, Lorg/mozilla/javascript/ScriptableObject;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    array-length v3, v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 2889
    iget-object v2, p0, Lorg/mozilla/javascript/ScriptableObject;->firstAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2890
    .local v2, slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :goto_0
    if-eqz v2, :cond_3

    iget-boolean v3, v2, Lorg/mozilla/javascript/ScriptableObject$Slot;->wasDeleted:Z

    if-eqz v3, :cond_3

    .line 2893
    iget-object v2, v2, Lorg/mozilla/javascript/ScriptableObject$Slot;->orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;

    goto :goto_0

    .line 2895
    :cond_3
    iput-object v2, p0, Lorg/mozilla/javascript/ScriptableObject;->firstAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2896
    :goto_1
    if-eqz v2, :cond_1

    .line 2897
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2898
    iget-object v0, v2, Lorg/mozilla/javascript/ScriptableObject$Slot;->orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2899
    .local v0, next:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :goto_2
    if-eqz v0, :cond_4

    iget-boolean v3, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->wasDeleted:Z

    if-eqz v3, :cond_4

    .line 2901
    iget-object v0, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;

    goto :goto_2

    .line 2903
    :cond_4
    iput-object v0, v2, Lorg/mozilla/javascript/ScriptableObject$Slot;->orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2904
    move-object v2, v0

    .line 2905
    goto :goto_1

    .line 2879
    .end local v0           #next:Lorg/mozilla/javascript/ScriptableObject$Slot;
    .end local v1           #objectsCount:I
    .end local v2           #slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method addLazilyInitializedValue(Ljava/lang/String;ILorg/mozilla/javascript/LazilyLoadedCtor;I)V
    .locals 3
    .parameter "name"
    .parameter "index"
    .parameter "init"
    .parameter "attributes"

    .prologue
    const/4 v2, 0x0

    .line 669
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 670
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 671
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->checkNotSealed(Ljava/lang/String;I)V

    .line 672
    const/4 v1, 0x4

    invoke-direct {p0, p1, p2, v1}, Lorg/mozilla/javascript/ScriptableObject;->getSlot(Ljava/lang/String;II)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    .line 674
    .local v0, gslot:Lorg/mozilla/javascript/ScriptableObject$GetterSlot;
    invoke-virtual {v0, p4}, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->setAttributes(I)V

    .line 675
    iput-object v2, v0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->getter:Ljava/lang/Object;

    .line 676
    iput-object v2, v0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->setter:Ljava/lang/Object;

    .line 677
    iput-object p3, v0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->value:Ljava/lang/Object;

    .line 678
    return-void
.end method

.method protected applyDescriptorToAttributeBitset(ILorg/mozilla/javascript/ScriptableObject;)I
    .locals 4
    .parameter "attributes"
    .parameter "desc"

    .prologue
    .line 1741
    const-string v3, "enumerable"

    invoke-static {p2, v3}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1742
    .local v1, enumerable:Ljava/lang/Object;
    sget-object v3, Lorg/mozilla/javascript/ScriptableObject;->NOT_FOUND:Ljava/lang/Object;

    if-eq v1, v3, :cond_0

    .line 1743
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    and-int/lit8 v3, p1, -0x3

    move p1, v3

    .line 1747
    :cond_0
    :goto_0
    const-string v3, "writable"

    invoke-static {p2, v3}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1748
    .local v2, writable:Ljava/lang/Object;
    sget-object v3, Lorg/mozilla/javascript/ScriptableObject;->NOT_FOUND:Ljava/lang/Object;

    if-eq v2, v3, :cond_1

    .line 1749
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int/lit8 v3, p1, -0x2

    move p1, v3

    .line 1753
    :cond_1
    :goto_1
    const-string v3, "configurable"

    invoke-static {p2, v3}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1754
    .local v0, configurable:Ljava/lang/Object;
    sget-object v3, Lorg/mozilla/javascript/ScriptableObject;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v3, :cond_2

    .line 1755
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    and-int/lit8 v3, p1, -0x5

    move p1, v3

    .line 1759
    :cond_2
    :goto_2
    return p1

    .line 1743
    .end local v0           #configurable:Ljava/lang/Object;
    .end local v2           #writable:Ljava/lang/Object;
    :cond_3
    or-int/lit8 v3, p1, 0x2

    move p1, v3

    goto :goto_0

    .line 1749
    .restart local v2       #writable:Ljava/lang/Object;
    :cond_4
    or-int/lit8 v3, p1, 0x1

    move p1, v3

    goto :goto_1

    .line 1755
    .restart local v0       #configurable:Ljava/lang/Object;
    :cond_5
    or-int/lit8 v3, p1, 0x4

    move p1, v3

    goto :goto_2
.end method

.method public final declared-synchronized associateValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2383
    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2384
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->associatedValues:Ljava/util/Map;

    .line 2385
    .local v0, h:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v0, :cond_1

    .line 2386
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #h:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2387
    .restart local v0       #h:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iput-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->associatedValues:Ljava/util/Map;

    .line 2389
    :cond_1
    invoke-static {v0, p1, p2}, Lorg/mozilla/javascript/Kit;->initHash(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1
.end method

.method public avoidObjectDetection()Z
    .locals 1

    .prologue
    .line 872
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 3033
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 2968
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2969
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1, p0}, Lorg/mozilla/javascript/ScriptableObject;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    .line 2973
    :goto_0
    return v0

    .line 2970
    .restart local p1
    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 2971
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p0}, Lorg/mozilla/javascript/ScriptableObject;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    goto :goto_0

    .line 2973
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .parameter "value"

    .prologue
    .line 2977
    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2978
    .local v1, obj:Ljava/lang/Object;
    if-eq p1, v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2980
    :cond_1
    const/4 v2, 0x1

    .line 2983
    .end local v1           #obj:Ljava/lang/Object;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public defineConst(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)V
    .locals 7
    .parameter "name"
    .parameter "start"

    .prologue
    .line 440
    const/4 v3, 0x0

    sget-object v5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    const/16 v6, 0x8

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/javascript/ScriptableObject;->putImpl(Ljava/lang/String;ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    if-ne p2, p0, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 444
    :cond_2
    instance-of v1, p2, Lorg/mozilla/javascript/ConstProperties;

    if-eqz v1, :cond_0

    .line 445
    move-object v0, p2

    check-cast v0, Lorg/mozilla/javascript/ConstProperties;

    move-object v1, v0

    invoke-interface {v1, p1, p2}, Lorg/mozilla/javascript/ConstProperties;->defineConst(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0
.end method

.method public defineFunctionProperties([Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 7
    .parameter "names"
    .parameter
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 1802
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p2}, Lorg/mozilla/javascript/FunctionObject;->getMethodList(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1803
    .local v3, methods:[Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_1

    .line 1804
    aget-object v4, p1, v1

    .line 1805
    .local v4, name:Ljava/lang/String;
    invoke-static {v3, v4}, Lorg/mozilla/javascript/FunctionObject;->findSingleMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1806
    .local v2, m:Ljava/lang/reflect/Method;
    if-nez v2, :cond_0

    .line 1807
    const-string v5, "msg.method.not.found"

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lorg/mozilla/javascript/Context;->reportRuntimeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v5

    throw v5

    .line 1810
    :cond_0
    new-instance v0, Lorg/mozilla/javascript/FunctionObject;

    invoke-direct {v0, v4, v2, p0}, Lorg/mozilla/javascript/FunctionObject;-><init>(Ljava/lang/String;Ljava/lang/reflect/Member;Lorg/mozilla/javascript/Scriptable;)V

    .line 1811
    .local v0, f:Lorg/mozilla/javascript/FunctionObject;
    invoke-virtual {p0, v4, v0, p3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 1803
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1813
    .end local v0           #f:Lorg/mozilla/javascript/FunctionObject;
    .end local v2           #m:Ljava/lang/reflect/Method;
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public defineOwnProperties(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ScriptableObject;)V
    .locals 10
    .parameter "cx"
    .parameter "props"

    .prologue
    const/4 v9, 0x0

    .line 1593
    invoke-virtual {p2}, Lorg/mozilla/javascript/ScriptableObject;->getIds()[Ljava/lang/Object;

    move-result-object v5

    .line 1594
    .local v5, ids:[Ljava/lang/Object;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/Object;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v4, v0, v3

    .line 1595
    .local v4, id:Ljava/lang/Object;
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1596
    .local v7, name:Ljava/lang/String;
    invoke-virtual {p2, v4}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1597
    .local v2, descObj:Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v1

    .line 1598
    .local v1, desc:Lorg/mozilla/javascript/ScriptableObject;
    const/4 v8, 0x1

    invoke-direct {p0, v7, v9, v8}, Lorg/mozilla/javascript/ScriptableObject;->getSlot(Ljava/lang/String;II)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object v8

    invoke-direct {p0, v8, v1}, Lorg/mozilla/javascript/ScriptableObject;->checkValidPropertyDefinition(Lorg/mozilla/javascript/ScriptableObject$Slot;Lorg/mozilla/javascript/ScriptableObject;)V

    .line 1594
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1600
    .end local v1           #desc:Lorg/mozilla/javascript/ScriptableObject;
    .end local v2           #descObj:Ljava/lang/Object;
    .end local v4           #id:Ljava/lang/Object;
    .end local v7           #name:Ljava/lang/String;
    :cond_0
    move-object v0, v5

    array-length v6, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_1

    aget-object v4, v0, v3

    .line 1601
    .restart local v4       #id:Ljava/lang/Object;
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1602
    .restart local v7       #name:Ljava/lang/String;
    invoke-virtual {p2, v4}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ScriptableObject;

    .line 1603
    .restart local v1       #desc:Lorg/mozilla/javascript/ScriptableObject;
    invoke-direct {p0, p1, v7, v1, v9}, Lorg/mozilla/javascript/ScriptableObject;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;Z)V

    .line 1600
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1605
    .end local v1           #desc:Lorg/mozilla/javascript/ScriptableObject;
    .end local v4           #id:Ljava/lang/Object;
    .end local v7           #name:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;)V
    .locals 1
    .parameter "cx"
    .parameter "id"
    .parameter "desc"

    .prologue
    .line 1617
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mozilla/javascript/ScriptableObject;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;Z)V

    .line 1618
    return-void
.end method

.method public defineProperty(Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 12
    .parameter "propertyName"
    .parameter
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/4 v4, 0x0

    .line 1438
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 1439
    .local v8, length:I
    if-nez v8, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1440
    :cond_0
    add-int/lit8 v0, v8, 0x3

    new-array v6, v0, [C

    .line 1441
    .local v6, buf:[C
    invoke-virtual {p1, v4, v8, v6, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 1442
    aget-char v0, v6, v1

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    aput-char v0, v6, v1

    .line 1443
    const/16 v0, 0x67

    aput-char v0, v6, v4

    .line 1444
    const/4 v0, 0x1

    const/16 v1, 0x65

    aput-char v1, v6, v0

    .line 1445
    const/4 v0, 0x2

    const/16 v1, 0x74

    aput-char v1, v6, v0

    .line 1446
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([C)V

    .line 1447
    .local v7, getterName:Ljava/lang/String;
    const/16 v0, 0x73

    aput-char v0, v6, v4

    .line 1448
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v6}, Ljava/lang/String;-><init>([C)V

    .line 1450
    .local v11, setterName:Ljava/lang/String;
    invoke-static {p2}, Lorg/mozilla/javascript/FunctionObject;->getMethodList(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v9

    .line 1451
    .local v9, methods:[Ljava/lang/reflect/Method;
    invoke-static {v9, v7}, Lorg/mozilla/javascript/FunctionObject;->findSingleMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1452
    .local v3, getter:Ljava/lang/reflect/Method;
    invoke-static {v9, v11}, Lorg/mozilla/javascript/FunctionObject;->findSingleMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 1453
    .local v10, setter:Ljava/lang/reflect/Method;
    if-nez v10, :cond_1

    .line 1454
    or-int/lit8 p3, p3, 0x1

    .line 1455
    :cond_1
    if-nez v10, :cond_2

    move-object v4, v2

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;I)V

    .line 1457
    return-void

    :cond_2
    move-object v4, v10

    .line 1455
    goto :goto_0
.end method

.method public defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1
    .parameter "propertyName"
    .parameter "value"
    .parameter "attributes"

    .prologue
    .line 1378
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->checkNotSealed(Ljava/lang/String;I)V

    .line 1379
    invoke-virtual {p0, p1, p0, p2}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 1380
    invoke-virtual {p0, p1, p3}, Lorg/mozilla/javascript/ScriptableObject;->setAttributes(Ljava/lang/String;I)V

    .line 1381
    return-void
.end method

.method public defineProperty(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;I)V
    .locals 9
    .parameter "propertyName"
    .parameter "delegateTo"
    .parameter "getter"
    .parameter "setter"
    .parameter "attributes"

    .prologue
    .line 1503
    const/4 v3, 0x0

    .line 1504
    .local v3, getterBox:Lorg/mozilla/javascript/MemberBox;
    if-eqz p3, :cond_6

    .line 1505
    new-instance v3, Lorg/mozilla/javascript/MemberBox;

    .end local v3           #getterBox:Lorg/mozilla/javascript/MemberBox;
    invoke-direct {v3, p3}, Lorg/mozilla/javascript/MemberBox;-><init>(Ljava/lang/reflect/Method;)V

    .line 1508
    .restart local v3       #getterBox:Lorg/mozilla/javascript/MemberBox;
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1509
    if-eqz p2, :cond_1

    const/4 v7, 0x1

    move v1, v7

    .line 1510
    .local v1, delegatedForm:Z
    :goto_0
    iput-object p2, v3, Lorg/mozilla/javascript/MemberBox;->delegateTo:Ljava/lang/Object;

    .line 1518
    :goto_1
    const/4 v2, 0x0

    .line 1519
    .local v2, errorId:Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 1520
    .local v5, parmTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v7, v5

    if-nez v7, :cond_3

    .line 1521
    if-eqz v1, :cond_0

    .line 1522
    const-string v2, "msg.obj.getter.parms"

    .line 1537
    :cond_0
    :goto_2
    if-eqz v2, :cond_6

    .line 1538
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v7

    throw v7

    .line 1509
    .end local v1           #delegatedForm:Z
    .end local v2           #errorId:Ljava/lang/String;
    .end local v5           #parmTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_1
    const/4 v7, 0x0

    move v1, v7

    goto :goto_0

    .line 1512
    :cond_2
    const/4 v1, 0x1

    .line 1515
    .restart local v1       #delegatedForm:Z
    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    iput-object v7, v3, Lorg/mozilla/javascript/MemberBox;->delegateTo:Ljava/lang/Object;

    goto :goto_1

    .line 1524
    .restart local v2       #errorId:Ljava/lang/String;
    .restart local v5       #parmTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_3
    array-length v7, v5

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 1525
    const/4 v7, 0x0

    aget-object v0, v5, v7

    .line 1527
    .local v0, argType:Ljava/lang/Class;
    sget-object v7, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    if-eq v0, v7, :cond_4

    sget-object v7, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableObjectClass:Ljava/lang/Class;

    if-eq v0, v7, :cond_4

    .line 1530
    const-string v2, "msg.bad.getter.parms"

    goto :goto_2

    .line 1531
    :cond_4
    if-nez v1, :cond_0

    .line 1532
    const-string v2, "msg.bad.getter.parms"

    goto :goto_2

    .line 1535
    .end local v0           #argType:Ljava/lang/Class;
    :cond_5
    const-string v2, "msg.bad.getter.parms"

    goto :goto_2

    .line 1542
    .end local v1           #delegatedForm:Z
    .end local v2           #errorId:Ljava/lang/String;
    .end local v5           #parmTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_6
    const/4 v6, 0x0

    .line 1543
    .local v6, setterBox:Lorg/mozilla/javascript/MemberBox;
    if-eqz p4, :cond_e

    .line 1544
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v7, v8, :cond_7

    .line 1545
    const-string v7, "msg.setter.return"

    invoke-virtual {p4}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v7

    throw v7

    .line 1548
    :cond_7
    new-instance v6, Lorg/mozilla/javascript/MemberBox;

    .end local v6           #setterBox:Lorg/mozilla/javascript/MemberBox;
    invoke-direct {v6, p4}, Lorg/mozilla/javascript/MemberBox;-><init>(Ljava/lang/reflect/Method;)V

    .line 1551
    .restart local v6       #setterBox:Lorg/mozilla/javascript/MemberBox;
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-nez v7, :cond_a

    .line 1552
    if-eqz p2, :cond_9

    const/4 v7, 0x1

    move v1, v7

    .line 1553
    .restart local v1       #delegatedForm:Z
    :goto_3
    iput-object p2, v6, Lorg/mozilla/javascript/MemberBox;->delegateTo:Ljava/lang/Object;

    .line 1561
    :goto_4
    const/4 v2, 0x0

    .line 1562
    .restart local v2       #errorId:Ljava/lang/String;
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 1563
    .restart local v5       #parmTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v7, v5

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    .line 1564
    if-eqz v1, :cond_8

    .line 1565
    const-string v2, "msg.setter2.expected"

    .line 1580
    :cond_8
    :goto_5
    if-eqz v2, :cond_e

    .line 1581
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v7

    throw v7

    .line 1552
    .end local v1           #delegatedForm:Z
    .end local v2           #errorId:Ljava/lang/String;
    .end local v5           #parmTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_9
    const/4 v7, 0x0

    move v1, v7

    goto :goto_3

    .line 1555
    :cond_a
    const/4 v1, 0x1

    .line 1558
    .restart local v1       #delegatedForm:Z
    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    iput-object v7, v6, Lorg/mozilla/javascript/MemberBox;->delegateTo:Ljava/lang/Object;

    goto :goto_4

    .line 1567
    .restart local v2       #errorId:Ljava/lang/String;
    .restart local v5       #parmTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_b
    array-length v7, v5

    const/4 v8, 0x2

    if-ne v7, v8, :cond_d

    .line 1568
    const/4 v7, 0x0

    aget-object v0, v5, v7

    .line 1570
    .restart local v0       #argType:Ljava/lang/Class;
    sget-object v7, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    if-eq v0, v7, :cond_c

    sget-object v7, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableObjectClass:Ljava/lang/Class;

    if-eq v0, v7, :cond_c

    .line 1573
    const-string v2, "msg.setter2.parms"

    goto :goto_5

    .line 1574
    :cond_c
    if-nez v1, :cond_8

    .line 1575
    const-string v2, "msg.setter1.parms"

    goto :goto_5

    .line 1578
    .end local v0           #argType:Ljava/lang/Class;
    :cond_d
    const-string v2, "msg.setter.parms"

    goto :goto_5

    .line 1585
    .end local v1           #delegatedForm:Z
    .end local v2           #errorId:Ljava/lang/String;
    .end local v5           #parmTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_e
    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-direct {p0, p1, v7, v8}, Lorg/mozilla/javascript/ScriptableObject;->getSlot(Ljava/lang/String;II)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object v4

    check-cast v4, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    .line 1587
    .local v4, gslot:Lorg/mozilla/javascript/ScriptableObject$GetterSlot;
    invoke-virtual {v4, p5}, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->setAttributes(I)V

    .line 1588
    iput-object v3, v4, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->getter:Ljava/lang/Object;

    .line 1589
    iput-object v6, v4, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->setter:Ljava/lang/Object;

    .line 1590
    return-void
.end method

.method public delete(I)V
    .locals 2
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 407
    invoke-direct {p0, v1, p1}, Lorg/mozilla/javascript/ScriptableObject;->checkNotSealed(Ljava/lang/String;I)V

    .line 408
    const/4 v0, 0x3

    invoke-direct {p0, v1, p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->accessSlot(Ljava/lang/String;II)Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 409
    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 393
    invoke-direct {p0, p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->checkNotSealed(Ljava/lang/String;I)V

    .line 394
    const/4 v0, 0x3

    invoke-direct {p0, p1, v1, v0}, Lorg/mozilla/javascript/ScriptableObject;->accessSlot(Ljava/lang/String;II)Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 395
    return-void
.end method

.method protected ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 2
    .parameter "arg"

    .prologue
    .line 1775
    instance-of v0, p1, Lorg/mozilla/javascript/Scriptable;

    if-nez v0, :cond_0

    .line 1776
    const-string v0, "msg.arg.not.object"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    .line 1777
    :cond_0
    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    .end local p1
    return-object p1
.end method

.method protected ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 2
    .parameter "arg"

    .prologue
    .line 1781
    instance-of v0, p1, Lorg/mozilla/javascript/ScriptableObject;

    if-nez v0, :cond_0

    .line 1782
    const-string v0, "msg.arg.not.object"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    .line 1783
    :cond_0
    check-cast p1, Lorg/mozilla/javascript/ScriptableObject;

    .end local p1
    return-object p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 3021
    new-instance v0, Lorg/mozilla/javascript/ScriptableObject$EntrySet;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/ScriptableObject$EntrySet;-><init>(Lorg/mozilla/javascript/ScriptableObject;)V

    return-object v0
.end method

.method protected equivalentValues(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "value"

    .prologue
    .line 890
    if-ne p0, p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    goto :goto_0
.end method

.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .parameter "start"

    .prologue
    .line 340
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->getImpl(Ljava/lang/String;ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"

    .prologue
    .line 2987
    const/4 v0, 0x0

    .line 2988
    .local v0, value:Ljava/lang/Object;
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2989
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1, p0}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    .line 2993
    .end local v0           #value:Ljava/lang/Object;
    :cond_0
    :goto_0
    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    .line 2994
    :cond_1
    const/4 v1, 0x0

    .line 2998
    :goto_1
    return-object v1

    .line 2990
    .restart local v0       #value:Ljava/lang/Object;
    .restart local p1
    :cond_2
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 2991
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, p0}, Lorg/mozilla/javascript/ScriptableObject;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 2995
    .end local v0           #value:Ljava/lang/Object;
    :cond_3
    instance-of v1, v0, Lorg/mozilla/javascript/Wrapper;

    if-eqz v1, :cond_4

    .line 2996
    check-cast v0, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {v0}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v0

    .line 2998
    goto :goto_1
.end method

.method public get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 1
    .parameter "name"
    .parameter "start"

    .prologue
    .line 328
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/mozilla/javascript/ScriptableObject;->getImpl(Ljava/lang/String;ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAllIds()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 739
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ScriptableObject;->getIds(Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getAssociatedValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"

    .prologue
    .line 2334
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->associatedValues:Ljava/util/Map;

    .line 2335
    .local v0, h:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 2336
    const/4 v1, 0x0

    .line 2337
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getAttributes(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 536
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->findAttributeSlot(Ljava/lang/String;II)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result v0

    return v0
.end method

.method public final getAttributes(ILorg/mozilla/javascript/Scriptable;)I
    .locals 1
    .parameter "index"
    .parameter "start"

    .prologue
    .line 478
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getAttributes(I)I

    move-result v0

    return v0
.end method

.method public getAttributes(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 518
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->findAttributeSlot(Ljava/lang/String;II)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result v0

    return v0
.end method

.method public final getAttributes(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)I
    .locals 1
    .parameter "name"
    .parameter "start"

    .prologue
    .line 469
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getAttributes(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public abstract getClassName()Ljava/lang/String;
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 758
    .local p1, typeHint:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getDefaultValue(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGetterOrSetter(Ljava/lang/String;IZ)Ljava/lang/Object;
    .locals 5
    .parameter "name"
    .parameter "index"
    .parameter "isSetter"

    .prologue
    .line 637
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 638
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 639
    :cond_0
    const/4 v4, 0x1

    invoke-direct {p0, p1, p2, v4}, Lorg/mozilla/javascript/ScriptableObject;->getSlot(Ljava/lang/String;II)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object v3

    .line 640
    .local v3, slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    if-nez v3, :cond_1

    .line 641
    const/4 v4, 0x0

    .line 647
    :goto_0
    return-object v4

    .line 642
    :cond_1
    instance-of v4, v3, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-eqz v4, :cond_4

    .line 643
    move-object v0, v3

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    move-object v1, v0

    .line 644
    .local v1, gslot:Lorg/mozilla/javascript/ScriptableObject$GetterSlot;
    if-eqz p3, :cond_2

    iget-object v4, v1, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->setter:Ljava/lang/Object;

    move-object v2, v4

    .line 645
    .local v2, result:Ljava/lang/Object;
    :goto_1
    if-eqz v2, :cond_3

    move-object v4, v2

    goto :goto_0

    .line 644
    .end local v2           #result:Ljava/lang/Object;
    :cond_2
    iget-object v4, v1, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->getter:Ljava/lang/Object;

    move-object v2, v4

    goto :goto_1

    .line 645
    .restart local v2       #result:Ljava/lang/Object;
    :cond_3
    sget-object v4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_0

    .line 647
    .end local v1           #gslot:Lorg/mozilla/javascript/ScriptableObject$GetterSlot;
    .end local v2           #result:Ljava/lang/Object;
    :cond_4
    sget-object v4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getIds()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 724
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ScriptableObject;->getIds(Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getIds(Z)[Ljava/lang/Object;
    .locals 9
    .parameter "getAll"

    .prologue
    const/4 v8, 0x0

    .line 2835
    iget-object v5, p0, Lorg/mozilla/javascript/ScriptableObject;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2836
    .local v5, s:[Lorg/mozilla/javascript/ScriptableObject$Slot;
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    .line 2837
    .local v0, a:[Ljava/lang/Object;
    if-nez v5, :cond_0

    move-object v7, v0

    .line 2873
    :goto_0
    return-object v7

    .line 2839
    :cond_0
    const/4 v1, 0x0

    .line 2840
    .local v1, c:I
    iget-object v6, p0, Lorg/mozilla/javascript/ScriptableObject;->firstAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2841
    .local v6, slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :goto_1
    if-eqz v6, :cond_1

    iget-boolean v7, v6, Lorg/mozilla/javascript/ScriptableObject$Slot;->wasDeleted:Z

    if-eqz v7, :cond_1

    .line 2844
    iget-object v6, v6, Lorg/mozilla/javascript/ScriptableObject$Slot;->orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;

    goto :goto_1

    .line 2846
    :cond_1
    iput-object v6, p0, Lorg/mozilla/javascript/ScriptableObject;->firstAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2847
    if-eqz v6, :cond_6

    move v2, v1

    .line 2849
    .end local v1           #c:I
    .local v2, c:I
    :goto_2
    if-nez p1, :cond_2

    invoke-virtual {v6}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_9

    .line 2850
    :cond_2
    if-nez v2, :cond_3

    .line 2851
    array-length v7, v5

    new-array v0, v7, [Ljava/lang/Object;

    .line 2852
    :cond_3
    add-int/lit8 v1, v2, 0x1

    .end local v2           #c:I
    .restart local v1       #c:I
    iget-object v7, v6, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, v6, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/String;

    :goto_3
    aput-object v7, v0, v2

    .line 2856
    :goto_4
    iget-object v3, v6, Lorg/mozilla/javascript/ScriptableObject$Slot;->orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2857
    .local v3, next:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :goto_5
    if-eqz v3, :cond_5

    iget-boolean v7, v3, Lorg/mozilla/javascript/ScriptableObject$Slot;->wasDeleted:Z

    if-eqz v7, :cond_5

    .line 2859
    iget-object v3, v3, Lorg/mozilla/javascript/ScriptableObject$Slot;->orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;

    goto :goto_5

    .line 2852
    .end local v3           #next:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :cond_4
    iget v7, v6, Lorg/mozilla/javascript/ScriptableObject$Slot;->indexOrHash:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_3

    .line 2861
    .restart local v3       #next:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :cond_5
    iput-object v3, v6, Lorg/mozilla/javascript/ScriptableObject$Slot;->orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2862
    if-nez v3, :cond_7

    .line 2868
    .end local v3           #next:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :cond_6
    iput-object v6, p0, Lorg/mozilla/javascript/ScriptableObject;->lastAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 2869
    array-length v7, v0

    if-ne v1, v7, :cond_8

    move-object v7, v0

    .line 2870
    goto :goto_0

    .line 2865
    .restart local v3       #next:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :cond_7
    move-object v6, v3

    move v2, v1

    .line 2866
    .end local v1           #c:I
    .restart local v2       #c:I
    goto :goto_2

    .line 2871
    .end local v2           #c:I
    .end local v3           #next:Lorg/mozilla/javascript/ScriptableObject$Slot;
    .restart local v1       #c:I
    :cond_8
    new-array v4, v1, [Ljava/lang/Object;

    .line 2872
    .local v4, result:[Ljava/lang/Object;
    invoke-static {v0, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, v4

    .line 2873
    goto :goto_0

    .end local v1           #c:I
    .end local v4           #result:[Ljava/lang/Object;
    .restart local v2       #c:I
    :cond_9
    move v1, v2

    .end local v2           #c:I
    .restart local v1       #c:I
    goto :goto_4
.end method

.method protected getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 3
    .parameter "cx"
    .parameter "id"

    .prologue
    .line 2939
    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v2}, Lorg/mozilla/javascript/ScriptableObject;->getSlot(Lorg/mozilla/javascript/Context;Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object v1

    .line 2940
    .local v1, slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 2942
    :goto_0
    return-object v2

    .line 2941
    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 2942
    .local v0, scope:Lorg/mozilla/javascript/Scriptable;
    if-nez v0, :cond_1

    move-object v2, p0

    :goto_1
    invoke-virtual {v1, p1, v2}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getPropertyDescriptor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    goto :goto_1
.end method

.method public getParentScope()Lorg/mozilla/javascript/Scriptable;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->parentScopeObject:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method public getPrototype()Lorg/mozilla/javascript/Scriptable;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->prototypeObject:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method protected getSlot(Lorg/mozilla/javascript/Context;Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject$Slot;
    .locals 4
    .parameter "cx"
    .parameter "id"
    .parameter "accessType"

    .prologue
    .line 2947
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2948
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2949
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastIndexResult(Lorg/mozilla/javascript/Context;)I

    move-result v0

    .line 2950
    .local v0, index:I
    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, p3}, Lorg/mozilla/javascript/ScriptableObject;->getSlot(Ljava/lang/String;II)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object v2

    .line 2954
    .end local v0           #index:I
    .local v2, slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :goto_0
    return-object v2

    .line 2952
    .end local v2           #slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, p3}, Lorg/mozilla/javascript/ScriptableObject;->getSlot(Ljava/lang/String;II)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object v2

    .restart local v2       #slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    goto :goto_0
.end method

.method public getTypeOf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->avoidObjectDetection()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "undefined"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "object"

    goto :goto_0
.end method

.method public has(ILorg/mozilla/javascript/Scriptable;)Z
    .locals 2
    .parameter "index"
    .parameter "start"

    .prologue
    const/4 v1, 0x1

    .line 313
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->getSlot(Ljava/lang/String;II)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 3
    .parameter "name"
    .parameter "start"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 301
    invoke-direct {p0, p1, v1, v2}, Lorg/mozilla/javascript/ScriptableObject;->getSlot(Ljava/lang/String;II)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public hasInstance(Lorg/mozilla/javascript/Scriptable;)Z
    .locals 1
    .parameter "instance"

    .prologue
    .line 857
    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->jsDelegatesTo(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    return v0
.end method

.method protected isAccessorDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z
    .locals 1
    .parameter "desc"

    .prologue
    .line 1767
    const-string v0, "get"

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "set"

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConst(Ljava/lang/String;)Z
    .locals 5
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 455
    invoke-direct {p0, p1, v3, v4}, Lorg/mozilla/javascript/ScriptableObject;->getSlot(Ljava/lang/String;II)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object v0

    .line 456
    .local v0, slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    if-nez v0, :cond_0

    move v1, v3

    .line 459
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result v1

    and-int/lit8 v1, v1, 0x5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method protected isDataDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z
    .locals 1
    .parameter "desc"

    .prologue
    .line 1763
    const-string v0, "value"

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "writable"

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 2964
    iget v0, p0, Lorg/mozilla/javascript/ScriptableObject;->count:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExtensible()Z
    .locals 1

    .prologue
    .line 1891
    iget-boolean v0, p0, Lorg/mozilla/javascript/ScriptableObject;->isExtensible:Z

    return v0
.end method

.method protected isGenericDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z
    .locals 1
    .parameter "desc"

    .prologue
    .line 1771
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->isDataDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->isAccessorDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isGetterOrSetter(Ljava/lang/String;IZ)Z
    .locals 4
    .parameter "name"
    .parameter "index"
    .parameter "setter"

    .prologue
    const/4 v3, 0x1

    .line 658
    invoke-direct {p0, p1, p2, v3}, Lorg/mozilla/javascript/ScriptableObject;->getSlot(Ljava/lang/String;II)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object v1

    .line 659
    .local v1, slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    instance-of v2, v1, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-eqz v2, :cond_1

    .line 660
    if-eqz p3, :cond_0

    move-object v0, v1

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    move-object v2, v0

    iget-object v2, v2, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->setter:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move v2, v3

    .line 663
    .end local v1           #slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :goto_0
    return v2

    .line 661
    .restart local v1       #slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :cond_0
    if-nez p3, :cond_1

    check-cast v1, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    .end local v1           #slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    iget-object v2, v1, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->getter:Ljava/lang/Object;

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    .line 663
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final isSealed()Z
    .locals 1

    .prologue
    .line 1934
    iget v0, p0, Lorg/mozilla/javascript/ScriptableObject;->count:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3013
    new-instance v0, Lorg/mozilla/javascript/ScriptableObject$KeySet;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/ScriptableObject$KeySet;-><init>(Lorg/mozilla/javascript/ScriptableObject;)V

    return-object v0
.end method

.method public preventExtensions()V
    .locals 1

    .prologue
    .line 1895
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/ScriptableObject;->isExtensible:Z

    .line 1896
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 3025
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 6
    .parameter "index"
    .parameter "start"
    .parameter "value"

    .prologue
    .line 376
    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptableObject;->putImpl(Ljava/lang/String;ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_0
    if-ne p2, p0, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 380
    :cond_1
    invoke-interface {p2, p1, p2, p3}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 6
    .parameter "name"
    .parameter "start"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 360
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptableObject;->putImpl(Ljava/lang/String;ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    :goto_0
    return-void

    .line 363
    :cond_0
    if-ne p2, p0, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 364
    :cond_1
    invoke-interface {p2, p1, p2, p3}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 3029
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putConst(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 7
    .parameter "name"
    .parameter "start"
    .parameter "value"

    .prologue
    .line 428
    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/javascript/ScriptableObject;->putImpl(Ljava/lang/String;ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    :goto_0
    return-void

    .line 431
    :cond_0
    if-ne p2, p0, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 432
    :cond_1
    instance-of v1, p2, Lorg/mozilla/javascript/ConstProperties;

    if-eqz v1, :cond_2

    .line 433
    move-object v0, p2

    check-cast v0, Lorg/mozilla/javascript/ConstProperties;

    move-object v1, v0

    invoke-interface {v1, p1, p2, p3}, Lorg/mozilla/javascript/ConstProperties;->putConst(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_0

    .line 435
    :cond_2
    invoke-interface {p2, p1, p2, p3}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"

    .prologue
    .line 3003
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3004
    .local v0, value:Ljava/lang/Object;
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3005
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->delete(Ljava/lang/String;)V

    .line 3009
    :cond_0
    :goto_0
    return-object v0

    .line 3006
    .restart local p1
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 3007
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/ScriptableObject;->delete(I)V

    goto :goto_0
.end method

.method public declared-synchronized sealObject()V
    .locals 4

    .prologue
    .line 1908
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lorg/mozilla/javascript/ScriptableObject;->count:I

    if-ltz v2, :cond_2

    .line 1910
    iget-object v1, p0, Lorg/mozilla/javascript/ScriptableObject;->firstAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    .line 1911
    .local v1, slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :goto_0
    if-eqz v1, :cond_1

    .line 1912
    iget-object v2, v1, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    instance-of v2, v2, Lorg/mozilla/javascript/LazilyLoadedCtor;

    if-eqz v2, :cond_0

    .line 1913
    iget-object v0, v1, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    check-cast v0, Lorg/mozilla/javascript/LazilyLoadedCtor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1915
    .local v0, initializer:Lorg/mozilla/javascript/LazilyLoadedCtor;
    :try_start_1
    invoke-virtual {v0}, Lorg/mozilla/javascript/LazilyLoadedCtor;->init()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1917
    :try_start_2
    invoke-virtual {v0}, Lorg/mozilla/javascript/LazilyLoadedCtor;->getValue()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    .line 1920
    .end local v0           #initializer:Lorg/mozilla/javascript/LazilyLoadedCtor;
    :cond_0
    iget-object v1, v1, Lorg/mozilla/javascript/ScriptableObject$Slot;->orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;

    goto :goto_0

    .line 1917
    .restart local v0       #initializer:Lorg/mozilla/javascript/LazilyLoadedCtor;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lorg/mozilla/javascript/LazilyLoadedCtor;->getValue()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v1, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1908
    .end local v0           #initializer:Lorg/mozilla/javascript/LazilyLoadedCtor;
    .end local v1           #slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1922
    .restart local v1       #slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :cond_1
    :try_start_3
    iget v2, p0, Lorg/mozilla/javascript/ScriptableObject;->count:I

    xor-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/mozilla/javascript/ScriptableObject;->count:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1924
    .end local v1           #slot:Lorg/mozilla/javascript/ScriptableObject$Slot;
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public setAttributes(II)V
    .locals 2
    .parameter "index"
    .parameter "attributes"

    .prologue
    const/4 v1, 0x0

    .line 580
    invoke-direct {p0, v1, p1}, Lorg/mozilla/javascript/ScriptableObject;->checkNotSealed(Ljava/lang/String;I)V

    .line 581
    const/4 v0, 0x2

    invoke-direct {p0, v1, p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->findAttributeSlot(Ljava/lang/String;II)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/ScriptableObject$Slot;->setAttributes(I)V

    .line 582
    return-void
.end method

.method public setAttributes(ILorg/mozilla/javascript/Scriptable;I)V
    .locals 0
    .parameter "index"
    .parameter "start"
    .parameter "attributes"

    .prologue
    .line 498
    invoke-virtual {p0, p1, p3}, Lorg/mozilla/javascript/ScriptableObject;->setAttributes(II)V

    .line 499
    return-void
.end method

.method public setAttributes(Ljava/lang/String;I)V
    .locals 2
    .parameter "name"
    .parameter "attributes"

    .prologue
    const/4 v1, 0x0

    .line 562
    invoke-direct {p0, p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->checkNotSealed(Ljava/lang/String;I)V

    .line 563
    const/4 v0, 0x2

    invoke-direct {p0, p1, v1, v0}, Lorg/mozilla/javascript/ScriptableObject;->findAttributeSlot(Ljava/lang/String;II)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/ScriptableObject$Slot;->setAttributes(I)V

    .line 564
    return-void
.end method

.method public final setAttributes(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;I)V
    .locals 0
    .parameter "name"
    .parameter "start"
    .parameter "attributes"

    .prologue
    .line 488
    invoke-virtual {p0, p1, p3}, Lorg/mozilla/javascript/ScriptableObject;->setAttributes(Ljava/lang/String;I)V

    .line 489
    return-void
.end method

.method public setGetterOrSetter(Ljava/lang/String;ILorg/mozilla/javascript/Callable;Z)V
    .locals 6
    .parameter "name"
    .parameter "index"
    .parameter "getterOrSetter"
    .parameter "isSetter"

    .prologue
    .line 590
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptableObject;->setGetterOrSetter(Ljava/lang/String;ILorg/mozilla/javascript/Callable;ZZ)V

    .line 591
    return-void
.end method

.method public setParentScope(Lorg/mozilla/javascript/Scriptable;)V
    .locals 0
    .parameter "m"

    .prologue
    .line 709
    iput-object p1, p0, Lorg/mozilla/javascript/ScriptableObject;->parentScopeObject:Lorg/mozilla/javascript/Scriptable;

    .line 710
    return-void
.end method

.method public setPrototype(Lorg/mozilla/javascript/Scriptable;)V
    .locals 0
    .parameter "m"

    .prologue
    .line 693
    iput-object p1, p0, Lorg/mozilla/javascript/ScriptableObject;->prototypeObject:Lorg/mozilla/javascript/Scriptable;

    .line 694
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 2960
    iget v0, p0, Lorg/mozilla/javascript/ScriptableObject;->count:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3017
    new-instance v0, Lorg/mozilla/javascript/ScriptableObject$ValueCollection;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/ScriptableObject$ValueCollection;-><init>(Lorg/mozilla/javascript/ScriptableObject;)V

    return-object v0
.end method
