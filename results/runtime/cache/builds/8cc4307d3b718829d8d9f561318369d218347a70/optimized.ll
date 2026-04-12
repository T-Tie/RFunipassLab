; ModuleID = '<stdin>'
source_filename = "/tmp/tmps_vtyuxk.cpp"
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

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %__c.addr.i = alloca i8, align 1
  %n = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  %b = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %a, i8 0, i64 400, i1 false)
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %b) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %b, i8 0, i64 400, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond3

for.body:                                         ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %add.ptr)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond3:                                        ; preds = %for.cond, %for.inc30
  %2 = phi i32 [ %.pre, %for.inc30 ], [ %0, %for.cond ]
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.inc30 ], [ 0, %for.cond ]
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %for.inc30 ], [ 1, %for.cond ]
  %t.0 = phi i32 [ %t.3, %for.inc30 ], [ 0, %for.cond ]
  %p2.0 = phi ptr [ %p2.3, %for.inc30 ], [ %b, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp4 = icmp slt i64 %indvars.iv35, %3
  br i1 %cmp4, label %for.cond6.preheader, label %for.cond34.preheader

for.cond6.preheader:                              ; preds = %for.cond3
  %add.ptr11 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv35
  br label %for.cond6

for.cond34.preheader:                             ; preds = %for.cond3
  %4 = call i32 @llvm.smax.i32(i32 %t.0, i32 1)
  %smax = add nsw i32 %4, -1
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond34

for.cond6:                                        ; preds = %if.end, %for.cond6.preheader
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %if.end ], [ 0, %for.cond6.preheader ]
  %t.1 = phi i32 [ %t.2, %if.end ], [ %t.0, %for.cond6.preheader ]
  %p2.1 = phi ptr [ %p2.2, %if.end ], [ %p2.0, %for.cond6.preheader ]
  %exitcond = icmp eq i64 %indvars.iv28, %indvars.iv33
  br i1 %exitcond, label %for.inc30, label %for.body8

for.body8:                                        ; preds = %for.cond6
  %cmp9 = icmp eq i64 %indvars.iv28, %indvars.iv35
  %.pre44 = load i32, ptr %add.ptr11, align 4, !tbaa !5
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body8
  store i32 %.pre44, ptr %p2.1, align 4, !tbaa !5
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %p2.1, i64 4
  %inc12 = add nsw i32 %t.1, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body8
  %t.2 = phi i32 [ %inc12, %if.then ], [ %t.1, %for.body8 ]
  %p2.2 = phi ptr [ %incdec.ptr, %if.then ], [ %p2.1, %for.body8 ]
  %add.ptr16 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv28
  %5 = load i32, ptr %add.ptr16, align 4, !tbaa !5
  %cmp17.not = icmp eq i32 %.pre44, %5
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br i1 %cmp17.not, label %for.inc30, label %for.cond6, !llvm.loop !12

for.inc30:                                        ; preds = %if.end, %for.cond6
  %t.3 = phi i32 [ %t.1, %for.cond6 ], [ %t.2, %if.end ]
  %p2.3 = phi ptr [ %p2.1, %for.cond6 ], [ %p2.2, %if.end ]
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !13

for.cond34:                                       ; preds = %for.cond34.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv40 = phi i64 [ 0, %for.cond34.preheader ], [ %indvars.iv.next41, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %exitcond43.not = icmp eq i64 %indvars.iv40, %wide.trip.count
  br i1 %exitcond43.not, label %for.end43, label %for.body36

for.body36:                                       ; preds = %for.cond34
  %add.ptr38 = getelementptr inbounds nuw i32, ptr %b, i64 %indvars.iv40
  %6 = load i32, ptr %add.ptr38, align 4, !tbaa !5
  %call39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %6)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 44, ptr %__c.addr.i, align 1, !tbaa !14
  %vtable.i = load ptr, ptr %call39, align 8, !tbaa !15
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call39, i64 %vbase.offset.i
  %_M_width.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 16
  %7 = load i64, ptr %_M_width.i.i, align 8, !tbaa !17
  %cmp.not.i = icmp eq i64 %7, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body36
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call39, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body36
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call39, i8 noundef signext 44)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond34, !llvm.loop !28

for.end43:                                        ; preds = %for.cond34
  %idx.ext44 = sext i32 %t.0 to i64
  %add.ptr45 = getelementptr inbounds i32, ptr %b, i64 %idx.ext44
  %add.ptr46 = getelementptr inbounds i8, ptr %add.ptr45, i64 -4
  %8 = load i32, ptr %add.ptr46, align 4, !tbaa !5
  %call47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %8)
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = !{!7, !7, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"vtable pointer", !8, i64 0}
!17 = !{!18, !19, i64 16}
!18 = !{!"_ZTSSt8ios_base", !19, i64 8, !19, i64 16, !20, i64 24, !21, i64 28, !21, i64 32, !22, i64 40, !24, i64 48, !7, i64 64, !6, i64 192, !25, i64 200, !26, i64 208}
!19 = !{!"long", !7, i64 0}
!20 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!21 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!22 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !23, i64 0}
!23 = !{!"any pointer", !7, i64 0}
!24 = !{!"_ZTSNSt8ios_base6_WordsE", !23, i64 0, !19, i64 8}
!25 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !23, i64 0}
!26 = !{!"_ZTSSt6locale", !27, i64 0}
!27 = !{!"p1 _ZTSNSt6locale5_ImplE", !23, i64 0}
!28 = distinct !{!28, !10, !11}
