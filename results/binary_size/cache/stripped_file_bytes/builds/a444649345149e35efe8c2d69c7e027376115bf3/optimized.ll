; ModuleID = '<stdin>'
source_filename = "/tmp/tmpdxgu9zge.cpp"
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
  %n = alloca i32, align 4
  %a = alloca [501 x i8], align 16
  %b = alloca [501 x i32], align 16
  %c = alloca [200 x [6 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call1 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  call void @llvm.lifetime.start.p0(i64 501, ptr nonnull %a) #7
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %a, i64 noundef 501)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #8
  %0 = load i32, ptr %n, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 2004, ptr nonnull %b) #7
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 501
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [501 x i32], ptr %b, i64 0, i64 %indvars.iv
  store i32 1, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %conv = trunc i64 %call4 to i32
  %sub = sub nsw i32 %conv, %0
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %c) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1200) %c, i8 0, i64 1200, i1 false)
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %smax73 = call i32 @llvm.smax.i32(i32 %sub, i32 -1)
  %1 = add i32 %smax73, 1
  %wide.trip.count74 = zext i32 %1 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc21, %for.end
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.inc21 ], [ 0, %for.end ]
  %exitcond75 = icmp eq i64 %indvars.iv70, %wide.trip.count74
  br i1 %exitcond75, label %for.cond24.preheader, label %for.cond8

for.cond24.preheader:                             ; preds = %for.cond5
  %2 = add i32 %conv, 1
  %3 = sub i32 %2, %0
  %wide.trip.count79 = zext i32 %3 to i64
  br label %for.cond24

for.cond8:                                        ; preds = %for.cond5, %for.body10
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %for.body10 ], [ 0, %for.cond5 ]
  %exitcond69.not = icmp eq i64 %indvars.iv65, %wide.trip.count
  br i1 %exitcond69.not, label %for.inc21, label %for.body10

for.body10:                                       ; preds = %for.cond8
  %4 = add nuw nsw i64 %indvars.iv65, %indvars.iv70
  %arrayidx13 = getelementptr inbounds nuw [501 x i8], ptr %a, i64 0, i64 %4
  %5 = load i8, ptr %arrayidx13, align 1, !tbaa !12
  %arrayidx17 = getelementptr inbounds nuw [200 x [6 x i8]], ptr %c, i64 0, i64 %indvars.iv70, i64 %indvars.iv65
  store i8 %5, ptr %arrayidx17, align 1, !tbaa !12
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  br label %for.cond8, !llvm.loop !13

for.inc21:                                        ; preds = %for.cond8
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %for.cond5, !llvm.loop !14

for.cond24:                                       ; preds = %for.cond24.preheader, %for.inc57
  %indvars.iv81 = phi i64 [ 0, %for.cond24.preheader ], [ %indvars.iv.next82, %for.inc57 ]
  %exitcond85 = icmp eq i64 %indvars.iv81, %wide.trip.count74
  br i1 %exitcond85, label %for.end59, label %for.cond27.preheader

for.cond27.preheader:                             ; preds = %for.cond24
  %arrayidx31 = getelementptr inbounds nuw [200 x [6 x i8]], ptr %c, i64 0, i64 %indvars.iv81
  %arrayidx39 = getelementptr inbounds nuw [501 x i32], ptr %b, i64 0, i64 %indvars.iv81
  br label %for.cond27

for.cond27:                                       ; preds = %for.cond27.preheader, %for.inc54
  %indvars.iv76 = phi i64 [ 0, %for.cond27.preheader ], [ %indvars.iv.next77, %for.inc54 ]
  %exitcond80 = icmp eq i64 %indvars.iv76, %wide.trip.count79
  br i1 %exitcond80, label %for.inc57, label %for.body29

for.body29:                                       ; preds = %for.cond27
  %arrayidx34 = getelementptr inbounds nuw [200 x [6 x i8]], ptr %c, i64 0, i64 %indvars.iv76
  %call36 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %arrayidx31, ptr noundef nonnull dereferenceable(1) %arrayidx34) #8
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %land.lhs.true, label %for.inc54

land.lhs.true:                                    ; preds = %for.body29
  %6 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %cmp40.not = icmp eq i32 %6, 0
  %cmp42.not = icmp eq i64 %indvars.iv81, %indvars.iv76
  %or.cond = or i1 %cmp42.not, %cmp40.not
  br i1 %or.cond, label %for.inc54, label %land.lhs.true43

land.lhs.true43:                                  ; preds = %land.lhs.true
  %arrayidx45 = getelementptr inbounds nuw [501 x i32], ptr %b, i64 0, i64 %indvars.iv76
  %7 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %cmp46.not = icmp eq i32 %7, 0
  br i1 %cmp46.not, label %for.inc54, label %if.then

if.then:                                          ; preds = %land.lhs.true43
  %add49 = add nsw i32 %6, 1
  store i32 %add49, ptr %arrayidx39, align 4, !tbaa !5
  store i32 0, ptr %arrayidx45, align 4, !tbaa !5
  br label %for.inc54

for.inc54:                                        ; preds = %for.body29, %land.lhs.true, %land.lhs.true43, %if.then
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  br label %for.cond27, !llvm.loop !15

for.inc57:                                        ; preds = %for.cond27
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  br label %for.cond24, !llvm.loop !16

for.end59:                                        ; preds = %for.cond24
  %8 = load i32, ptr %b, align 16, !tbaa !5
  br label %for.cond61

for.cond61:                                       ; preds = %for.body63, %for.end59
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %for.body63 ], [ 0, %for.end59 ]
  %s.0 = phi i32 [ %spec.select, %for.body63 ], [ %8, %for.end59 ]
  %exitcond90 = icmp eq i64 %indvars.iv86, %wide.trip.count74
  br i1 %exitcond90, label %for.end73, label %for.body63

for.body63:                                       ; preds = %for.cond61
  %arrayidx65 = getelementptr inbounds nuw [501 x i32], ptr %b, i64 0, i64 %indvars.iv86
  %9 = load i32, ptr %arrayidx65, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %9, i32 %s.0)
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  br label %for.cond61, !llvm.loop !17

for.end73:                                        ; preds = %for.cond61
  %cmp74 = icmp eq i32 %s.0, 1
  br i1 %cmp74, label %if.then75, label %if.else

if.then75:                                        ; preds = %for.end73
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 2)
  %vtable.i44 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !18
  %vbase.offset.ptr.i45 = getelementptr i8, ptr %vtable.i44, i64 -24
  %vbase.offset.i46 = load i64, ptr %vbase.offset.ptr.i45, align 8
  %add.ptr.i47 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i46
  %call.i48 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i47, i8 noundef signext 10)
  %call1.i49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i48)
  %call.i.i50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i49)
  br label %if.end103

if.else:                                          ; preds = %for.end73
  %call78 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %s.0)
  %vtable.i51 = load ptr, ptr %call78, align 8, !tbaa !18
  %vbase.offset.ptr.i52 = getelementptr i8, ptr %vtable.i51, i64 -24
  %vbase.offset.i53 = load i64, ptr %vbase.offset.ptr.i52, align 8
  %add.ptr.i54 = getelementptr inbounds i8, ptr %call78, i64 %vbase.offset.i53
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i54, i8 noundef signext 10)
  %call1.i55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call78, i8 noundef signext %call.i)
  %call.i.i56 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i55)
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc100, %if.else
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %for.inc100 ], [ 0, %if.else ]
  %exitcond98 = icmp eq i64 %indvars.iv94, %wide.trip.count74
  br i1 %exitcond98, label %if.end103, label %for.body82

for.body82:                                       ; preds = %for.cond80
  %arrayidx84 = getelementptr inbounds nuw [501 x i32], ptr %b, i64 0, i64 %indvars.iv94
  %10 = load i32, ptr %arrayidx84, align 4, !tbaa !5
  %cmp85 = icmp eq i32 %10, %s.0
  br i1 %cmp85, label %for.cond87, label %for.inc100

for.cond87:                                       ; preds = %for.body82, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ 0, %for.body82 ]
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %12 = sext i32 %11 to i64
  %cmp88 = icmp slt i64 %indvars.iv91, %12
  br i1 %cmp88, label %for.body89, label %for.end97

for.body89:                                       ; preds = %for.cond87
  %arrayidx93 = getelementptr inbounds nuw [200 x [6 x i8]], ptr %c, i64 0, i64 %indvars.iv94, i64 %indvars.iv91
  %13 = load i8, ptr %arrayidx93, align 1, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %13, ptr %__c.addr.i, align 1, !tbaa !12
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !18
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %14 = load i64, ptr %gep, align 8, !tbaa !20
  %cmp.not.i = icmp eq i64 %14, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body89
  %call1.i42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body89
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %13)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  br label %for.cond87, !llvm.loop !31

for.end97:                                        ; preds = %for.cond87
  %vtable.i57 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !18
  %vbase.offset.ptr.i58 = getelementptr i8, ptr %vtable.i57, i64 -24
  %vbase.offset.i59 = load i64, ptr %vbase.offset.ptr.i58, align 8
  %add.ptr.i60 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i59
  %call.i61 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i60, i8 noundef signext 10)
  %call1.i62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i61)
  %call.i.i63 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i62)
  br label %for.inc100

for.inc100:                                       ; preds = %for.body82, %for.end97
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  br label %for.cond80, !llvm.loop !32

if.end103:                                        ; preds = %for.cond80, %if.then75
  %call104 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %call105 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %call106 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %c) #7
  call void @llvm.lifetime.end.p0(i64 2004, ptr nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 501, ptr nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = !{!19, !19, i64 0}
!19 = !{!"vtable pointer", !8, i64 0}
!20 = !{!21, !22, i64 16}
!21 = !{!"_ZTSSt8ios_base", !22, i64 8, !22, i64 16, !23, i64 24, !24, i64 28, !24, i64 32, !25, i64 40, !27, i64 48, !7, i64 64, !6, i64 192, !28, i64 200, !29, i64 208}
!22 = !{!"long", !7, i64 0}
!23 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!24 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!25 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !26, i64 0}
!26 = !{!"any pointer", !7, i64 0}
!27 = !{!"_ZTSNSt8ios_base6_WordsE", !26, i64 0, !22, i64 8}
!28 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !26, i64 0}
!29 = !{!"_ZTSSt6locale", !30, i64 0}
!30 = !{!"p1 _ZTSNSt6locale5_ImplE", !26, i64 0}
!31 = distinct !{!31, !10, !11}
!32 = distinct !{!32, !10, !11}
