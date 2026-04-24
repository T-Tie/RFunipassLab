; ModuleID = '<stdin>'
source_filename = "/tmp/tmpqxzw73_b.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %__c.addr.i = alloca i8, align 1
  %a = alloca [501 x i8], align 16
  %n = alloca i32, align 4
  %f = alloca [501 x [5 x i8]], align 16
  %g = alloca [501 x i32], align 16
  %flag = alloca [501 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 501, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call1 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %indvars.iv106 = phi i32 [ %indvars.iv.next107, %while.cond ], [ 1, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond ], [ 0, %entry ]
  %call2 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %conv = trunc i32 %call2 to i8
  %add.ptr = getelementptr inbounds nuw i8, ptr %a, i64 %indvars.iv
  store i8 %conv, ptr %add.ptr, align 1, !tbaa !5
  %sext.mask = and i32 %call2, 255
  %cmp = icmp eq i32 %sext.mask, 10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next107 = add nuw i32 %indvars.iv106, 1
  br i1 %cmp, label %while.end, label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %0 = trunc nuw nsw i64 %indvars.iv to i32
  %vtable.i53 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !11
  %vbase.offset.ptr.i54 = getelementptr i8, ptr %vtable.i53, i64 -24
  %vbase.offset.i55 = load i64, ptr %vbase.offset.ptr.i54, align 8
  %add.ptr.i56 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i55
  %call.i57 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i56, i8 noundef signext 10)
  %call1.i58 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i57)
  %call.i.i59 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i58)
  call void @llvm.lifetime.start.p0(i64 2505, ptr nonnull %f) #6
  call void @llvm.lifetime.start.p0(i64 2004, ptr nonnull %g) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2004) %g, i8 0, i64 2004, i1 false)
  %1 = load i32, ptr %n, align 4, !tbaa !13
  %sub = sub nsw i32 %0, %1
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %2 = sext i32 %sub to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %while.end
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %for.inc24 ], [ 0, %while.end ]
  %cmp8.not = icmp sgt i64 %indvars.iv86, %2
  br i1 %cmp8.not, label %for.end26, label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %for.cond
  %add.ptr18 = getelementptr inbounds nuw [5 x i8], ptr %f, i64 %indvars.iv86
  br label %for.cond9

for.cond9:                                        ; preds = %for.cond9.preheader, %for.body14
  %indvars.iv90 = phi i64 [ 0, %for.cond9.preheader ], [ %indvars.iv.next91, %for.body14 ]
  %indvars.iv88 = phi i64 [ %indvars.iv86, %for.cond9.preheader ], [ %indvars.iv.next89, %for.body14 ]
  %exitcond.not = icmp eq i64 %indvars.iv90, %wide.trip.count
  br i1 %exitcond.not, label %for.inc24, label %for.body14

for.body14:                                       ; preds = %for.cond9
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %a, i64 %indvars.iv88
  %3 = load i8, ptr %add.ptr16, align 1, !tbaa !5
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %add.ptr18, i64 %indvars.iv90
  store i8 %3, ptr %add.ptr21, align 1, !tbaa !5
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br label %for.cond9, !llvm.loop !15

for.inc24:                                        ; preds = %for.cond9
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  br label %for.cond, !llvm.loop !16

for.end26:                                        ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 2004, ptr nonnull %flag) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2004) %flag, i8 0, i64 2004, i1 false)
  %4 = sub i32 %indvars.iv106, %1
  %wide.trip.count108 = zext i32 %4 to i64
  %wide.trip.count99 = zext nneg i32 %smax to i64
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc72, %for.end26
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %for.inc72 ], [ 0, %for.end26 ]
  %cmp29.not = icmp sgt i64 %indvars.iv101, %2
  br i1 %cmp29.not, label %for.cond75, label %for.body30

for.body30:                                       ; preds = %for.cond27
  %arrayidx = getelementptr inbounds nuw [501 x i32], ptr %flag, i64 0, i64 %indvars.iv101
  %5 = load i32, ptr %arrayidx, align 4, !tbaa !13
  %cmp31 = icmp eq i32 %5, 1
  br i1 %cmp31, label %for.inc72, label %for.cond34.preheader

for.cond34.preheader:                             ; preds = %for.body30
  %add.ptr43 = getelementptr inbounds nuw [5 x i8], ptr %f, i64 %indvars.iv101
  %arrayidx63 = getelementptr inbounds nuw [501 x i32], ptr %g, i64 0, i64 %indvars.iv101
  br label %for.cond34

for.cond34:                                       ; preds = %for.cond34.preheader, %for.inc68
  %indvars.iv103 = phi i64 [ %indvars.iv101, %for.cond34.preheader ], [ %indvars.iv.next104, %for.inc68 ]
  %exitcond109 = icmp eq i64 %indvars.iv103, %wide.trip.count108
  br i1 %exitcond109, label %for.inc72, label %for.cond38.preheader

for.cond38.preheader:                             ; preds = %for.cond34
  %add.ptr49 = getelementptr inbounds nuw [5 x i8], ptr %f, i64 %indvars.iv103
  br label %for.cond38

for.cond38:                                       ; preds = %for.cond38.preheader, %for.inc57
  %indvars.iv96 = phi i64 [ 0, %for.cond38.preheader ], [ %indvars.iv.next97, %for.inc57 ]
  %exitcond100.not = icmp eq i64 %indvars.iv96, %wide.trip.count99
  br i1 %exitcond100.not, label %for.end59, label %for.body41

for.body41:                                       ; preds = %for.cond38
  %add.ptr46 = getelementptr inbounds nuw i8, ptr %add.ptr43, i64 %indvars.iv96
  %6 = load i8, ptr %add.ptr46, align 1, !tbaa !5
  %add.ptr52 = getelementptr inbounds nuw i8, ptr %add.ptr49, i64 %indvars.iv96
  %7 = load i8, ptr %add.ptr52, align 1, !tbaa !5
  %cmp54.not = icmp eq i8 %6, %7
  br i1 %cmp54.not, label %for.inc57, label %for.end59.split.loop.exit

for.inc57:                                        ; preds = %for.body41
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  br label %for.cond38, !llvm.loop !17

for.end59.split.loop.exit:                        ; preds = %for.body41
  %8 = trunc nuw nsw i64 %indvars.iv96 to i32
  br label %for.end59

for.end59:                                        ; preds = %for.cond38, %for.end59.split.loop.exit
  %t.0.lcssa = phi i32 [ %8, %for.end59.split.loop.exit ], [ %smax, %for.cond38 ]
  %cmp60 = icmp eq i32 %t.0.lcssa, %1
  br i1 %cmp60, label %if.then61, label %for.inc68

if.then61:                                        ; preds = %for.end59
  %9 = load i32, ptr %arrayidx63, align 4, !tbaa !13
  %inc64 = add nsw i32 %9, 1
  store i32 %inc64, ptr %arrayidx63, align 4, !tbaa !13
  %arrayidx66 = getelementptr inbounds nuw [501 x i32], ptr %flag, i64 0, i64 %indvars.iv103
  store i32 1, ptr %arrayidx66, align 4, !tbaa !13
  br label %for.inc68

for.inc68:                                        ; preds = %for.end59, %if.then61
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  br label %for.cond34, !llvm.loop !18

for.inc72:                                        ; preds = %for.cond34, %for.body30
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  br label %for.cond27, !llvm.loop !19

for.cond75:                                       ; preds = %for.cond27, %for.body78
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %for.body78 ], [ 0, %for.cond27 ]
  %l.0 = phi i32 [ %.sroa.speculated, %for.body78 ], [ 0, %for.cond27 ]
  %cmp77.not = icmp sgt i64 %indvars.iv111, %2
  br i1 %cmp77.not, label %for.end84, label %for.body78

for.body78:                                       ; preds = %for.cond75
  %arrayidx80 = getelementptr inbounds nuw [501 x i32], ptr %g, i64 0, i64 %indvars.iv111
  %10 = load i32, ptr %arrayidx80, align 4, !tbaa !13
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %10, i32 %l.0)
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1
  br label %for.cond75, !llvm.loop !20

for.end84:                                        ; preds = %for.cond75
  %cmp85 = icmp sgt i32 %l.0, 1
  br i1 %cmp85, label %if.then86, label %if.else

if.then86:                                        ; preds = %for.end84
  %call87 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %l.0)
  %vtable.i60 = load ptr, ptr %call87, align 8, !tbaa !11
  %vbase.offset.ptr.i61 = getelementptr i8, ptr %vtable.i60, i64 -24
  %vbase.offset.i62 = load i64, ptr %vbase.offset.ptr.i61, align 8
  %add.ptr.i63 = getelementptr inbounds i8, ptr %call87, i64 %vbase.offset.i62
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i63, i8 noundef signext 10)
  %call1.i64 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call87, i8 noundef signext %call.i)
  %call.i.i65 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i64)
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc112, %if.then86
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %for.inc112 ], [ 0, %if.then86 ]
  %11 = load i32, ptr %n, align 4, !tbaa !13
  %sub90 = sub nsw i32 %0, %11
  %12 = sext i32 %sub90 to i64
  %cmp91.not = icmp sgt i64 %indvars.iv117, %12
  br i1 %cmp91.not, label %if.end117, label %for.body92

for.body92:                                       ; preds = %for.cond89
  %arrayidx94 = getelementptr inbounds nuw [501 x i32], ptr %g, i64 0, i64 %indvars.iv117
  %13 = load i32, ptr %arrayidx94, align 4, !tbaa !13
  %cmp95 = icmp eq i32 %13, %l.0
  br i1 %cmp95, label %for.cond97.preheader, label %for.inc112

for.cond97.preheader:                             ; preds = %for.body92
  %add.ptr102 = getelementptr inbounds nuw [5 x i8], ptr %f, i64 %indvars.iv117
  br label %for.cond97

for.cond97:                                       ; preds = %for.cond97.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %14 = phi i32 [ %11, %for.cond97.preheader ], [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %indvars.iv114 = phi i64 [ 0, %for.cond97.preheader ], [ %indvars.iv.next115, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %15 = sext i32 %14 to i64
  %cmp99.not.not = icmp slt i64 %indvars.iv114, %15
  br i1 %cmp99.not.not, label %for.body100, label %for.end109

for.body100:                                      ; preds = %for.cond97
  %add.ptr105 = getelementptr inbounds nuw i8, ptr %add.ptr102, i64 %indvars.iv114
  %16 = load i8, ptr %add.ptr105, align 1, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %16, ptr %__c.addr.i, align 1, !tbaa !5
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !11
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %17 = load i64, ptr %gep, align 8, !tbaa !21
  %cmp.not.i = icmp eq i64 %17, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body100
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body100
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %16)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !13
  br label %for.cond97, !llvm.loop !32

for.end109:                                       ; preds = %for.cond97
  %vtable.i66 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !11
  %vbase.offset.ptr.i67 = getelementptr i8, ptr %vtable.i66, i64 -24
  %vbase.offset.i68 = load i64, ptr %vbase.offset.ptr.i67, align 8
  %add.ptr.i69 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i68
  %call.i70 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i69, i8 noundef signext 10)
  %call1.i71 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i70)
  %call.i.i72 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i71)
  br label %for.inc112

for.inc112:                                       ; preds = %for.body92, %for.end109
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1
  br label %for.cond89, !llvm.loop !33

if.else:                                          ; preds = %for.end84
  %call1.i50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 2)
  %vtable.i73 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !11
  %vbase.offset.ptr.i74 = getelementptr i8, ptr %vtable.i73, i64 -24
  %vbase.offset.i75 = load i64, ptr %vbase.offset.ptr.i74, align 8
  %add.ptr.i76 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i75
  %call.i77 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i76, i8 noundef signext 10)
  %call1.i78 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i77)
  %call.i.i79 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i78)
  br label %if.end117

if.end117:                                        ; preds = %for.cond89, %if.else
  call void @llvm.lifetime.end.p0(i64 2004, ptr nonnull %flag) #6
  call void @llvm.lifetime.end.p0(i64 2004, ptr nonnull %g) #6
  call void @llvm.lifetime.end.p0(i64 2505, ptr nonnull %f) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.end.p0(i64 501, ptr nonnull %a) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!12, !12, i64 0}
!12 = !{!"vtable pointer", !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !6, i64 0}
!15 = distinct !{!15, !9, !10}
!16 = distinct !{!16, !9, !10}
!17 = distinct !{!17, !9, !10}
!18 = distinct !{!18, !9, !10}
!19 = distinct !{!19, !9, !10}
!20 = distinct !{!20, !9, !10}
!21 = !{!22, !23, i64 16}
!22 = !{!"_ZTSSt8ios_base", !23, i64 8, !23, i64 16, !24, i64 24, !25, i64 28, !25, i64 32, !26, i64 40, !28, i64 48, !6, i64 64, !14, i64 192, !29, i64 200, !30, i64 208}
!23 = !{!"long", !6, i64 0}
!24 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!25 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!26 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !27, i64 0}
!27 = !{!"any pointer", !6, i64 0}
!28 = !{!"_ZTSNSt8ios_base6_WordsE", !27, i64 0, !23, i64 8}
!29 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !27, i64 0}
!30 = !{!"_ZTSSt6locale", !31, i64 0}
!31 = !{!"p1 _ZTSNSt6locale5_ImplE", !27, i64 0}
!32 = distinct !{!32, !9, !10}
!33 = distinct !{!33, !9, !10}
