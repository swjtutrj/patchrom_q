.class final Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$1;,
        Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$PrxmFilter;,
        Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$BPPFilter;,
        Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$BIPFilter;,
        Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$HidFilter;,
        Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$NapFilter;,
        Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$PanuFilter;,
        Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$TransferFilter;,
        Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$AudioFilter;,
        Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;,
        Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;,
        Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;,
        Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$AllFilter;,
        Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$Filter;
    }
.end annotation


# static fields
.field static final ALL_FILTER:Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$Filter; = null

.field static final BONDED_DEVICE_FILTER:Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$Filter; = null

.field private static final FILTERS:[Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$Filter; = null

.field private static final TAG:Ljava/lang/String; = "BluetoothDeviceFilter"

.field static final UNBONDED_DEVICE_FILTER:Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$AllFilter;

    invoke-direct {v0, v3}, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$AllFilter;-><init>(Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$1;)V

    sput-object v0, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$Filter;

    new-instance v0, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;

    invoke-direct {v0, v3}, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;-><init>(Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$1;)V

    sput-object v0, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$Filter;

    new-instance v0, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;

    invoke-direct {v0, v3}, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;-><init>(Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$1;)V

    sput-object v0, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$Filter;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$Filter;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$Filter;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$AudioFilter;

    invoke-direct {v2, v3}, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$AudioFilter;-><init>(Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$TransferFilter;

    invoke-direct {v2, v3}, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$TransferFilter;-><init>(Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$PanuFilter;

    invoke-direct {v2, v3}, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$PanuFilter;-><init>(Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$NapFilter;

    invoke-direct {v2, v3}, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$NapFilter;-><init>(Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$BPPFilter;

    invoke-direct {v2, v3}, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$BPPFilter;-><init>(Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$BIPFilter;

    invoke-direct {v2, v3}, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$BIPFilter;-><init>(Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$HidFilter;

    invoke-direct {v2, v3}, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$HidFilter;-><init>(Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$PrxmFilter;

    invoke-direct {v2, v3}, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$PrxmFilter;-><init>(Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$Filter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getFilter(I)Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$Filter;
    .locals 3

    if-ltz p0, :cond_0

    sget-object v0, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$Filter;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$Filter;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "BluetoothDeviceFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LENGTH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$Filter;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BluetoothDeviceFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "************ Invalid filter type **********: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for device picker"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$Filter;

    goto :goto_0
.end method
