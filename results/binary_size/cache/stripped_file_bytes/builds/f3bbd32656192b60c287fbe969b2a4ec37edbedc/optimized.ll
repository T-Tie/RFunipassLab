; ModuleID = '<stdin>'
source_filename = "/tmp/tmp0ehhfcqt.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [502 x i8] zeroinitializer, align 16
@b = dso_local global [502 x [6 x i8]] zeroinitializer, align 16
@c = dso_local local_unnamed_addr global [502 x i8] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  %_M_width.i17.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %0 = load i64, ptr %_M_width.i17.i, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull @a, i64 noundef 502)
  %vtable12.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i = getelementptr i8, ptr %vtable12.i, i64 -24
  %vbase.offset14.i = load i64, ptr %vbase.offset.ptr13.i, align 8
  %add.ptr15.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 32
  %1 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !21
  %cmp.i.i = icmp eq i32 %1, 0
  %2 = add i64 %0, -503
  %or.cond.i = icmp ult i64 %2, -502
  %or.cond = select i1 %cmp.i.i, i1 %or.cond.i, i1 false
  br i1 %or.cond, label %if.then19.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

if.then19.i:                                      ; preds = %entry
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 232
  %3 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !22
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i18.i = icmp eq i32 %call25.i, -1
  br i1 %cmp.i18.i, label %if.then28.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit, !prof !30

if.then28.i:                                      ; preds = %if.then19.i
  %vtable29.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable29.i, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit: ; preds = %entry, %if.then19.i, %if.then28.i
  %call2 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @a) #7
  %conv = trunc i64 %call2 to i32
  %4 = load i32, ptr %n, align 4, !tbaa !31
  %sub = sub nsw i32 %conv, %4
  %smax = call i32 @llvm.smax.i32(i32 %4, i32 0)
  %smax60 = call i32 @llvm.smax.i32(i32 %sub, i32 -1)
  %5 = add i32 %smax60, 1
  %wide.trip.count61 = zext i32 %5 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %for.inc10 ], [ 0, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit ]
  %exitcond62 = icmp eq i64 %indvars.iv57, %wide.trip.count61
  br i1 %exitcond62, label %for.cond13, label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr @a, i64 %indvars.iv57
  br label %for.cond3

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body5
  %indvars.iv = phi i64 [ 0, %for.cond3.preheader ], [ %indvars.iv.next, %for.body5 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc10, label %for.body5

for.body5:                                        ; preds = %for.cond3
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %add.ptr, i64 %indvars.iv
  %6 = load i8, ptr %add.ptr7, align 1, !tbaa !32
  %arrayidx9 = getelementptr inbounds nuw [6 x i8], ptr @b, i64 %indvars.iv57, i64 %indvars.iv
  store i8 %6, ptr %arrayidx9, align 1, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond3, !llvm.loop !33

for.inc10:                                        ; preds = %for.cond3
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  br label %for.cond, !llvm.loop !36

for.cond13.loopexit:                              ; preds = %for.cond17
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  br label %for.cond13, !llvm.loop !37

for.cond13:                                       ; preds = %for.cond, %for.cond13.loopexit
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.cond13.loopexit ], [ 0, %for.cond ]
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %for.cond13.loopexit ], [ 1, %for.cond ]
  %exitcond72 = icmp eq i64 %indvars.iv68, %wide.trip.count61
  br i1 %exitcond72, label %for.end36, label %for.body16

for.body16:                                       ; preds = %for.cond13
  %arrayidx22 = getelementptr inbounds nuw [6 x i8], ptr @b, i64 %indvars.iv68
  %arrayidx29 = getelementptr inbounds nuw i8, ptr @c, i64 %indvars.iv68
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc31, %for.body16
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %for.inc31 ], [ %indvars.iv63, %for.body16 ]
  %7 = trunc nuw i64 %indvars.iv65 to i32
  %cmp19.not = icmp slt i32 %sub, %7
  br i1 %cmp19.not, label %for.cond13.loopexit, label %for.body20

for.body20:                                       ; preds = %for.cond17
  %arrayidx24 = getelementptr inbounds nuw [6 x i8], ptr @b, i64 %indvars.iv65
  %call26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %arrayidx22, ptr noundef nonnull dereferenceable(1) %arrayidx24) #7
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then, label %for.inc31

if.then:                                          ; preds = %for.body20
  %8 = load i8, ptr %arrayidx29, align 1, !tbaa !32
  %inc30 = add i8 %8, 1
  store i8 %inc30, ptr %arrayidx29, align 1, !tbaa !32
  br label %for.inc31

for.inc31:                                        ; preds = %for.body20, %if.then
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  br label %for.cond17, !llvm.loop !38

for.end36:                                        ; preds = %for.cond13
  %9 = load i8, ptr @c, align 16, !tbaa !32
  %conv37 = sext i8 %9 to i32
  br label %for.cond38

for.cond38:                                       ; preds = %for.body41, %for.end36
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %for.body41 ], [ 0, %for.end36 ]
  %max.0 = phi i32 [ %spec.select, %for.body41 ], [ %conv37, %for.end36 ]
  %exitcond77 = icmp eq i64 %indvars.iv73, %wide.trip.count61
  br i1 %exitcond77, label %for.end53, label %for.body41

for.body41:                                       ; preds = %for.cond38
  %arrayidx43 = getelementptr inbounds nuw i8, ptr @c, i64 %indvars.iv73
  %10 = load i8, ptr %arrayidx43, align 1, !tbaa !32
  %conv44 = sext i8 %10 to i32
  %spec.select = call i32 @llvm.smax.i32(i32 %max.0, i32 %conv44)
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  br label %for.cond38, !llvm.loop !39

for.end53:                                        ; preds = %for.cond38
  %cmp54 = icmp slt i32 %max.0, 1
  br i1 %cmp54, label %if.then55, label %if.else

if.then55:                                        ; preds = %for.end53
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 2)
  br label %if.end78

if.else:                                          ; preds = %for.end53
  %add57 = add nuw nsw i32 %max.0, 1
  %call58 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %add57)
  %vtable.i43 = load ptr, ptr %call58, align 8, !tbaa !5
  %vbase.offset.ptr.i44 = getelementptr i8, ptr %vtable.i43, i64 -24
  %vbase.offset.i45 = load i64, ptr %vbase.offset.ptr.i44, align 8
  %add.ptr.i46 = getelementptr inbounds i8, ptr %call58, i64 %vbase.offset.i45
  %call.i47 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i46, i8 noundef signext 10)
  %call1.i48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call58, i8 noundef signext %call.i47)
  %call.i.i49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i48)
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc75, %if.else
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %for.inc75 ], [ 0, %if.else ]
  %11 = load i32, ptr %n, align 4, !tbaa !31
  %sub61 = sub nsw i32 %conv, %11
  %12 = sext i32 %sub61 to i64
  %cmp62 = icmp slt i64 %indvars.iv78, %12
  br i1 %cmp62, label %for.body63, label %if.end78

for.body63:                                       ; preds = %for.cond60
  %arrayidx65 = getelementptr inbounds nuw i8, ptr @c, i64 %indvars.iv78
  %13 = load i8, ptr %arrayidx65, align 1, !tbaa !32
  %conv66 = sext i8 %13 to i32
  %cmp67 = icmp eq i32 %max.0, %conv66
  br i1 %cmp67, label %if.then68, label %for.inc75

if.then68:                                        ; preds = %for.body63
  %arrayidx70 = getelementptr inbounds nuw [6 x i8], ptr @b, i64 %indvars.iv78
  %call.i.i36 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx70) #6
  %call1.i37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx70, i64 noundef %call.i.i36)
  %vtable.i50 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i51 = getelementptr i8, ptr %vtable.i50, i64 -24
  %vbase.offset.i52 = load i64, ptr %vbase.offset.ptr.i51, align 8
  %add.ptr.i53 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i52
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i53, i8 noundef signext 10)
  %call1.i54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i)
  %call.i.i55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i54)
  br label %for.inc75

for.inc75:                                        ; preds = %for.body63, %if.then68
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %for.cond60, !llvm.loop !40

if.end78:                                         ; preds = %for.cond60, %if.then55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4 align 2

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"vtable pointer", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 16}
!9 = !{!"_ZTSSt8ios_base", !10, i64 8, !10, i64 16, !12, i64 24, !13, i64 28, !13, i64 32, !14, i64 40, !16, i64 48, !11, i64 64, !17, i64 192, !18, i64 200, !19, i64 208}
!10 = !{!"long", !11, i64 0}
!11 = !{!"omnipotent char", !7, i64 0}
!12 = !{!"_ZTSSt13_Ios_Fmtflags", !11, i64 0}
!13 = !{!"_ZTSSt12_Ios_Iostate", !11, i64 0}
!14 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !15, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"_ZTSNSt8ios_base6_WordsE", !15, i64 0, !10, i64 8}
!17 = !{!"int", !11, i64 0}
!18 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !15, i64 0}
!19 = !{!"_ZTSSt6locale", !20, i64 0}
!20 = !{!"p1 _ZTSNSt6locale5_ImplE", !15, i64 0}
!21 = !{!9, !13, i64 32}
!22 = !{!23, !26, i64 232}
!23 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !9, i64 0, !24, i64 216, !11, i64 224, !25, i64 225, !26, i64 232, !27, i64 240, !28, i64 248, !29, i64 256}
!24 = !{!"p1 _ZTSSo", !15, i64 0}
!25 = !{!"bool", !11, i64 0}
!26 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !15, i64 0}
!27 = !{!"p1 _ZTSSt5ctypeIcE", !15, i64 0}
!28 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!29 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!30 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!31 = !{!17, !17, i64 0}
!32 = !{!11, !11, i64 0}
!33 = distinct !{!33, !34, !35}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = distinct !{!36, !34, !35}
!37 = distinct !{!37, !34, !35}
!38 = distinct !{!38, !34, !35}
!39 = distinct !{!39, !34, !35}
!40 = distinct !{!40, !34, !35}
