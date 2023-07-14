/****************************************************************************
** Meta object code from reading C++ file 'getApps.h'
**
** Created: Fri 7. Jul 11:22:31 2023
**      by: The Qt Meta Object Compiler version 62 (Qt 4.7.4)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../getApps.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'getApps.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 62
#error "This file was generated using the moc from 4.7.4. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_GetApps[] = {

 // content:
       5,       // revision
       0,       // classname
       0,    0, // classinfo
       9,   14, // methods
       1,   59, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: signature, parameters, type, tag, flags
       9,    8,    8,    8, 0x05,
      25,    8,    8,    8, 0x05,
      42,    8,    8,    8, 0x05,

 // slots: signature, parameters, type, tag, flags
      60,    8,    8,    8, 0x08,
      84,   76,    8,    8, 0x08,

 // methods: signature, parameters, type, tag, flags
     111,    8,    8,    8, 0x02,
     121,    8,    8,    8, 0x02,
     131,    8,    8,    8, 0x02,
     142,    8,    8,    8, 0x02,

 // properties: name, type, flags
     165,  153, 0x0b495001,

 // properties: notify_signal_id
       1,

       0        // eod
};

static const char qt_meta_stringdata_GetApps[] = {
    "GetApps\0\0dataProcessed()\0appInfoChanged()\0"
    "processFinished()\0replyFinished()\0"
    "xmlData\0processXmlData(QByteArray)\0"
    "getApps()\0getLibs()\0getGames()\0"
    "getTools()\0QStringList\0appInfo\0"
};

const QMetaObject GetApps::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_GetApps,
      qt_meta_data_GetApps, 0 }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &GetApps::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *GetApps::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *GetApps::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_GetApps))
        return static_cast<void*>(const_cast< GetApps*>(this));
    return QObject::qt_metacast(_clname);
}

int GetApps::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: dataProcessed(); break;
        case 1: appInfoChanged(); break;
        case 2: processFinished(); break;
        case 3: replyFinished(); break;
        case 4: processXmlData((*reinterpret_cast< const QByteArray(*)>(_a[1]))); break;
        case 5: getApps(); break;
        case 6: getLibs(); break;
        case 7: getGames(); break;
        case 8: getTools(); break;
        default: ;
        }
        _id -= 9;
    }
#ifndef QT_NO_PROPERTIES
      else if (_c == QMetaObject::ReadProperty) {
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QStringList*>(_v) = appInfoList(); break;
        }
        _id -= 1;
    } else if (_c == QMetaObject::WriteProperty) {
        _id -= 1;
    } else if (_c == QMetaObject::ResetProperty) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 1;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void GetApps::dataProcessed()
{
    QMetaObject::activate(this, &staticMetaObject, 0, 0);
}

// SIGNAL 1
void GetApps::appInfoChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 1, 0);
}

// SIGNAL 2
void GetApps::processFinished()
{
    QMetaObject::activate(this, &staticMetaObject, 2, 0);
}
QT_END_MOC_NAMESPACE
