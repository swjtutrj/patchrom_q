.class final Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$BIPFilter;
.super Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;
.source "BluetoothDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BIPFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;-><init>(Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$BIPFilter;-><init>()V

    return-void
.end method


# virtual methods
.method matches([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    sget-object v1, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->BIP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v1}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_2

    const/4 v1, 0x6

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
