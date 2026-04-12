; ModuleID = '<stdin>'
source_filename = "/tmp/tmph9v69if0.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@ch = dso_local global [520 x i8] zeroinitializer, align 16
@n = dso_local global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %__c.addr.i = alloca i8, align 1
  %zichuan = alloca [520 x [6 x i8]], align 16
  %zichuanshu = alloca [520 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 3120, ptr nonnull %zichuan) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(3120) %zichuan, i8 0, i64 3120, i1 false)
  call void @llvm.lifetime.start.p0(i64 2080, ptr nonnull %zichuanshu) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2080) %zichuanshu, i8 0, i64 2080, i1 false)
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  %call1 = tail call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %call2 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull @ch, i64 noundef 520)
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %idx.ext = sext i32 %0 to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  %1 = add nuw i32 %smax, 1
  %smax59 = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext i32 %1 to i64
  %wide.trip.count60 = zext nneg i32 %smax59 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.end50, %entry
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %for.end50 ], [ 0, %entry ]
  %q.0 = phi ptr [ %incdec.ptr53, %for.end50 ], [ @ch, %entry ]
  %add.ptr = getelementptr inbounds i8, ptr %q.0, i64 %idx.ext
  %add.ptr3 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  %2 = load i8, ptr %add.ptr3, align 1, !tbaa !9
  %cmp.not = icmp eq i8 %2, 0
  br i1 %cmp.not, label %for.cond56, label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.cond
  %invariant.gep52 = getelementptr i8, ptr %q.0, i64 -1
  %arrayidx = getelementptr inbounds nuw [520 x [6 x i8]], ptr %zichuan, i64 0, i64 %indvars.iv62
  %arrayidx45 = getelementptr inbounds nuw [520 x i32], ptr %zichuanshu, i64 0, i64 %indvars.iv62
  %3 = load i8, ptr %q.0, align 1, !tbaa !9
  br label %for.cond4

for.cond4:                                        ; preds = %for.cond4.preheader, %for.inc49
  %4 = phi i8 [ %.pre, %for.inc49 ], [ 1, %for.cond4.preheader ]
  %p.0 = phi ptr [ %incdec.ptr, %for.inc49 ], [ %q.0, %for.cond4.preheader ]
  %flag2.0 = phi i32 [ %flag2.2, %for.inc49 ], [ 1, %for.cond4.preheader ]
  %cmp9.not = icmp eq i8 %4, 0
  br i1 %cmp9.not, label %for.end50, label %for.body10

for.body10:                                       ; preds = %for.cond4
  %5 = load i8, ptr %p.0, align 1, !tbaa !9
  %cmp13 = icmp eq i8 %5, %3
  br i1 %cmp13, label %for.cond14.preheader, label %for.inc49

for.cond14.preheader:                             ; preds = %for.body10
  %invariant.gep = getelementptr i8, ptr %p.0, i64 -1
  br label %for.cond14

for.cond14:                                       ; preds = %for.body16, %for.cond14.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body16 ], [ 2, %for.cond14.preheader ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %if.then27, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %6 = load i8, ptr %gep, align 1, !tbaa !9
  %gep53 = getelementptr i8, ptr %invariant.gep52, i64 %indvars.iv
  %7 = load i8, ptr %gep53, align 1, !tbaa !9
  %cmp25.not = icmp eq i8 %6, %7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp25.not, label %for.cond14, label %for.inc49, !llvm.loop !10

if.then27:                                        ; preds = %for.cond14
  %tobool28.not = icmp eq i32 %flag2.0, 0
  br i1 %tobool28.not, label %if.end43, label %for.cond31

for.cond31:                                       ; preds = %if.then27, %for.body34
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %for.body34 ], [ 0, %if.then27 ]
  %exitcond61.not = icmp eq i64 %indvars.iv56, %wide.trip.count60
  br i1 %exitcond61.not, label %if.end43, label %for.body34

for.body34:                                       ; preds = %for.cond31
  %add.ptr36 = getelementptr inbounds nuw i8, ptr %p.0, i64 %indvars.iv56
  %8 = load i8, ptr %add.ptr36, align 1, !tbaa !9
  %add.ptr38 = getelementptr inbounds nuw i8, ptr %arrayidx, i64 %indvars.iv56
  store i8 %8, ptr %add.ptr38, align 1, !tbaa !9
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  br label %for.cond31, !llvm.loop !13

if.end43:                                         ; preds = %for.cond31, %if.then27
  %9 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %inc46 = add nsw i32 %9, 1
  store i32 %inc46, ptr %arrayidx45, align 4, !tbaa !5
  br label %for.inc49

for.inc49:                                        ; preds = %for.body16, %for.body10, %if.end43
  %flag2.2 = phi i32 [ 0, %if.end43 ], [ %flag2.0, %for.body10 ], [ %flag2.0, %for.body16 ]
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %p.0, i64 1
  %add.ptr6.phi.trans.insert = getelementptr inbounds i8, ptr %incdec.ptr, i64 %idx.ext
  %add.ptr7.phi.trans.insert = getelementptr inbounds i8, ptr %add.ptr6.phi.trans.insert, i64 -1
  %.pre = load i8, ptr %add.ptr7.phi.trans.insert, align 1, !tbaa !9
  br label %for.cond4, !llvm.loop !14

for.end50:                                        ; preds = %for.cond4
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  %incdec.ptr53 = getelementptr inbounds nuw i8, ptr %q.0, i64 1
  br label %for.cond, !llvm.loop !15

for.cond56:                                       ; preds = %for.cond, %for.body59
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %for.body59 ], [ 0, %for.cond ]
  %max.0 = phi i32 [ %spec.select, %for.body59 ], [ 1, %for.cond ]
  %exitcond68.not = icmp eq i64 %indvars.iv65, 520
  br i1 %exitcond68.not, label %for.cond.cleanup58, label %for.body59

for.cond.cleanup58:                               ; preds = %for.cond56
  %cmp71 = icmp sgt i32 %max.0, 1
  br i1 %cmp71, label %if.then72, label %if.else

for.body59:                                       ; preds = %for.cond56
  %arrayidx61 = getelementptr inbounds nuw [520 x i32], ptr %zichuanshu, i64 0, i64 %indvars.iv65
  %10 = load i32, ptr %arrayidx61, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smax.i32(i32 %10, i32 %max.0)
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  br label %for.cond56, !llvm.loop !16

if.then72:                                        ; preds = %for.cond.cleanup58
  %call73 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %max.0)
  %vtable.i32 = load ptr, ptr %call73, align 8, !tbaa !17
  %vbase.offset.ptr.i33 = getelementptr i8, ptr %vtable.i32, i64 -24
  %vbase.offset.i34 = load i64, ptr %vbase.offset.ptr.i33, align 8
  %add.ptr.i35 = getelementptr inbounds i8, ptr %call73, i64 %vbase.offset.i34
  %call.i36 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i35, i8 noundef signext 10)
  %call1.i37 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call73, i8 noundef signext %call.i36)
  %call.i.i38 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i37)
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc100, %if.then72
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.inc100 ], [ 0, %if.then72 ]
  %exitcond75.not = icmp eq i64 %indvars.iv72, 520
  br i1 %exitcond75.not, label %if.end106, label %for.body79

for.body79:                                       ; preds = %for.cond76
  %arrayidx81 = getelementptr inbounds nuw [520 x i32], ptr %zichuanshu, i64 0, i64 %indvars.iv72
  %11 = load i32, ptr %arrayidx81, align 4, !tbaa !5
  %cmp82 = icmp eq i32 %11, %max.0
  br i1 %cmp82, label %for.cond84.preheader, label %for.inc100

for.cond84.preheader:                             ; preds = %for.body79
  %arrayidx89 = getelementptr inbounds nuw [520 x [6 x i8]], ptr %zichuan, i64 0, i64 %indvars.iv72
  br label %for.cond84

for.cond84:                                       ; preds = %for.cond84.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv69 = phi i64 [ 0, %for.cond84.preheader ], [ %indvars.iv.next70, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %12 = load i32, ptr @n, align 4, !tbaa !5
  %13 = sext i32 %12 to i64
  %cmp85 = icmp slt i64 %indvars.iv69, %13
  br i1 %cmp85, label %for.body87, label %for.cond.cleanup86

for.cond.cleanup86:                               ; preds = %for.cond84
  %vtable.i39 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %vbase.offset.ptr.i40 = getelementptr i8, ptr %vtable.i39, i64 -24
  %vbase.offset.i41 = load i64, ptr %vbase.offset.ptr.i40, align 8
  %add.ptr.i42 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i41
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i42, i8 noundef signext 10)
  %call1.i43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i)
  %call.i.i44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i43)
  br label %for.inc100

for.body87:                                       ; preds = %for.cond84
  %add.ptr92 = getelementptr inbounds nuw i8, ptr %arrayidx89, i64 %indvars.iv69
  %14 = load i8, ptr %add.ptr92, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %14, ptr %__c.addr.i, align 1, !tbaa !9
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep54 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %15 = load i64, ptr %gep54, align 8, !tbaa !19
  %cmp.not.i = icmp eq i64 %15, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body87
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body87
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %14)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  br label %for.cond84, !llvm.loop !30

for.inc100:                                       ; preds = %for.body79, %for.cond.cleanup86
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  br label %for.cond76, !llvm.loop !31

if.else:                                          ; preds = %for.cond.cleanup58
  %call1.i29 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 2)
  %vtable.i45 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %vbase.offset.ptr.i46 = getelementptr i8, ptr %vtable.i45, i64 -24
  %vbase.offset.i47 = load i64, ptr %vbase.offset.ptr.i46, align 8
  %add.ptr.i48 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i47
  %call.i49 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i48, i8 noundef signext 10)
  %call1.i50 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i49)
  %call.i.i51 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i50)
  br label %if.end106

if.end106:                                        ; preds = %for.cond76, %if.else
  call void @llvm.lifetime.end.p0(i64 2080, ptr nonnull %zichuanshu) #6
  call void @llvm.lifetime.end.p0(i64 3120, ptr nonnull %zichuan) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = !{!18, !18, i64 0}
!18 = !{!"vtable pointer", !8, i64 0}
!19 = !{!20, !21, i64 16}
!20 = !{!"_ZTSSt8ios_base", !21, i64 8, !21, i64 16, !22, i64 24, !23, i64 28, !23, i64 32, !24, i64 40, !26, i64 48, !7, i64 64, !6, i64 192, !27, i64 200, !28, i64 208}
!21 = !{!"long", !7, i64 0}
!22 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!23 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!24 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !25, i64 0}
!25 = !{!"any pointer", !7, i64 0}
!26 = !{!"_ZTSNSt8ios_base6_WordsE", !25, i64 0, !21, i64 8}
!27 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !25, i64 0}
!28 = !{!"_ZTSSt6locale", !29, i64 0}
!29 = !{!"p1 _ZTSNSt6locale5_ImplE", !25, i64 0}
!30 = distinct !{!30, !11, !12}
!31 = distinct !{!31, !11, !12}
