; ModuleID = '<stdin>'
source_filename = "/tmp/tmpp24jkee8.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@freq = dso_local local_unnamed_addr global [27 x [27 x [27 x [27 x i32]]]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %str = alloca [505 x i8], align 16
  %fre = alloca [27 x [27 x i32]], align 16
  %fre107 = alloca [27 x [27 x [27 x i32]]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #9
  call void @llvm.lifetime.start.p0(i64 noundef 505, ptr noundef nonnull align 16 captures(none) dereferenceable(505) %str) #9
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %vtable7.i = load ptr, ptr %call, align 8, !tbaa !5, !invariant.load !8
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8, !invariant.load !8
  %add.ptr10.i = getelementptr inbounds i8, ptr %call, i64 %vbase.offset9.i
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 16 dereferenceable(505) %str, i64 noundef 505)
  %call16.i = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #10
  br i1 %call16.i, label %land.lhs.true.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

land.lhs.true.i:                                  ; preds = %entry
  %_M_width.i4.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %0 = load i64, ptr %_M_width.i4.i, align 8, !tbaa !9, !invariant.load !8
  %1 = add i64 %0, -506
  %or.cond.i = icmp ult i64 %1, -505
  br i1 %or.cond.i, label %if.then19.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

if.then19.i:                                      ; preds = %land.lhs.true.i
  %call24.i = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #10
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i)
  %cmp.i.i = icmp eq i32 %call25.i, -1
  %conv.i = zext i1 %cmp.i.i to i64
  %expval.i = call i64 @llvm.expect.i64(i64 %conv.i, i64 1)
  %tobool.not.i = icmp eq i64 %expval.i, 0
  br i1 %tobool.not.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit, label %if.then28.i

if.then28.i:                                      ; preds = %if.then19.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit: ; preds = %entry, %land.lhs.true.i, %if.then19.i, %if.then28.i
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #11
  %conv = trunc i64 %call3 to i32
  %2 = load i32, ptr %n, align 4, !tbaa !22
  switch i32 %2, label %for.cond263 [
    i32 2, label %if.then
    i32 3, label %if.then106
  ]

if.then:                                          ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit
  call void @llvm.lifetime.start.p0(i64 noundef 2916, ptr noundef nonnull %fre) #10
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %if.then
  %indvars.iv163 = phi i64 [ %indvars.iv.next164, %for.inc10 ], [ 1, %if.then ]
  %exitcond166.not = icmp eq i64 %indvars.iv163, 27
  br i1 %exitcond166.not, label %for.cond13.preheader, label %for.cond5

for.cond13.preheader:                             ; preds = %for.cond
  %3 = call i32 @llvm.smax.i32(i32 %conv, i32 1)
  %4 = add nsw i32 %3, -1
  %wide.trip.count171 = zext nneg i32 %4 to i64
  br label %for.cond13

for.cond5:                                        ; preds = %for.cond, %for.inc
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %for.inc ], [ 1, %for.cond ]
  %exitcond162.not = icmp eq i64 %indvars.iv159, 27
  br i1 %exitcond162.not, label %for.inc10, label %for.inc

for.inc:                                          ; preds = %for.cond5
  %arrayidx9 = getelementptr inbounds nuw [27 x [27 x i32]], ptr %fre, i64 0, i64 %indvars.iv163, i64 %indvars.iv159
  store i32 0, ptr %arrayidx9, align 4, !tbaa !22
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1
  br label %for.cond5, !llvm.loop !23

for.inc10:                                        ; preds = %for.cond5
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1
  br label %for.cond, !llvm.loop !26

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc29
  %5 = phi i8 [ undef, %for.cond13.preheader ], [ %6, %for.inc29 ]
  %indvars.iv167 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next168, %for.inc29 ]
  %exitcond172 = icmp eq i64 %indvars.iv167, %wide.trip.count171
  br i1 %exitcond172, label %for.cond32, label %for.inc29

for.inc29:                                        ; preds = %for.cond13
  %conv18 = sext i8 %5 to i64
  %sub19 = add nsw i64 %conv18, -96
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1
  %arrayidx23 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %indvars.iv.next168
  %6 = load i8, ptr %arrayidx23, align 1, !tbaa !27, !invariant.load !8
  %conv24 = sext i8 %6 to i64
  %sub25 = add nsw i64 %conv24, -96
  %arrayidx27 = getelementptr inbounds [27 x [27 x i32]], ptr %fre, i64 0, i64 %sub19, i64 %sub25
  %7 = load i32, ptr %arrayidx27, align 4, !tbaa !22, !invariant.load !8
  %inc28 = add nsw i32 %7, 1
  store i32 %inc28, ptr %arrayidx27, align 4, !tbaa !22
  br label %for.cond13, !llvm.loop !28

for.cond32:                                       ; preds = %for.cond13, %for.inc51
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %for.inc51 ], [ 1, %for.cond13 ]
  %max.0 = phi i32 [ %max.1, %for.inc51 ], [ 0, %for.cond13 ]
  %exitcond180.not = icmp eq i64 %indvars.iv177, 27
  br i1 %exitcond180.not, label %for.end53, label %for.cond35

for.cond35:                                       ; preds = %for.cond32, %for.body37
  %indvars.iv173 = phi i64 [ %indvars.iv.next174, %for.body37 ], [ 1, %for.cond32 ]
  %max.1 = phi i32 [ %spec.select, %for.body37 ], [ %max.0, %for.cond32 ]
  %exitcond176.not = icmp eq i64 %indvars.iv173, 27
  br i1 %exitcond176.not, label %for.inc51, label %for.body37

for.body37:                                       ; preds = %for.cond35
  %arrayidx41 = getelementptr inbounds nuw [27 x [27 x i32]], ptr %fre, i64 0, i64 %indvars.iv177, i64 %indvars.iv173
  %8 = load i32, ptr %arrayidx41, align 4, !tbaa !22, !invariant.load !8
  %spec.select = call i32 @llvm.smax.i32(i32 %8, i32 %max.1)
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1
  br label %for.cond35, !llvm.loop !29

for.inc51:                                        ; preds = %for.cond35
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1
  br label %for.cond32, !llvm.loop !30

for.end53:                                        ; preds = %for.cond32
  %cmp54 = icmp eq i32 %max.0, 1
  br i1 %cmp54, label %if.then55, label %if.else

if.then55:                                        ; preds = %for.end53
  %call56 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str)
  br label %if.end59

if.else:                                          ; preds = %for.end53
  %call57 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %max.0)
  %call58 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call57, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end59

if.end59:                                         ; preds = %if.else, %if.then55
  %max.3 = phi i32 [ -1, %if.then55 ], [ %max.0, %if.else ]
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc101, %if.end59
  %indvars.iv181 = phi i64 [ %indvars.iv.next182, %for.inc101 ], [ 0, %if.end59 ]
  %exitcond185 = icmp eq i64 %indvars.iv181, %wide.trip.count171
  br i1 %exitcond185, label %for.end103, label %for.body63

for.body63:                                       ; preds = %for.cond60
  %arrayidx65 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %indvars.iv181
  %9 = load i8, ptr %arrayidx65, align 1, !tbaa !27
  %conv66 = sext i8 %9 to i64
  %sub67 = add nsw i64 %conv66, -96
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1
  %arrayidx72 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %indvars.iv.next182
  %10 = load i8, ptr %arrayidx72, align 1, !tbaa !27
  %conv73 = sext i8 %10 to i64
  %sub74 = add nsw i64 %conv73, -96
  %arrayidx76 = getelementptr inbounds [27 x [27 x i32]], ptr %fre, i64 0, i64 %sub67, i64 %sub74
  %11 = load i32, ptr %arrayidx76, align 4, !tbaa !22
  %cmp77 = icmp eq i32 %11, %max.3
  br i1 %cmp77, label %if.then78, label %for.inc101

if.then78:                                        ; preds = %for.body63
  %call81 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %9)
  %12 = load i8, ptr %arrayidx72, align 1, !tbaa !27
  %call85 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %call81, i8 noundef signext %12)
  %call86 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call85, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %13 = load i8, ptr %arrayidx65, align 1, !tbaa !27
  %conv89 = sext i8 %13 to i64
  %sub90 = add nsw i64 %conv89, -96
  %14 = load i8, ptr %arrayidx72, align 1, !tbaa !27
  %conv96 = sext i8 %14 to i64
  %sub97 = add nsw i64 %conv96, -96
  %arrayidx99 = getelementptr inbounds [27 x [27 x i32]], ptr %fre, i64 0, i64 %sub90, i64 %sub97
  store i32 0, ptr %arrayidx99, align 4, !tbaa !22
  br label %for.inc101

for.inc101:                                       ; preds = %for.body63, %if.then78
  br label %for.cond60, !llvm.loop !31

for.end103:                                       ; preds = %for.cond60
  call void @llvm.lifetime.end.p0(i64 2916, ptr nonnull %fre) #10
  br label %if.end461

if.then106:                                       ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit
  call void @llvm.lifetime.start.p0(i64 noundef 78732, ptr noundef nonnull %fre107) #10
  br label %for.cond108

for.cond108:                                      ; preds = %for.inc129, %if.then106
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %for.inc129 ], [ 1, %if.then106 ]
  %exitcond134.not = icmp eq i64 %indvars.iv131, 27
  br i1 %exitcond134.not, label %for.cond132.preheader, label %for.cond111

for.cond132.preheader:                            ; preds = %for.cond108
  %15 = call i32 @llvm.smax.i32(i32 %conv, i32 2)
  %16 = add nsw i32 %15, -2
  %wide.trip.count = zext nneg i32 %16 to i64
  br label %for.cond132

for.cond111:                                      ; preds = %for.cond108, %for.inc126
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %for.inc126 ], [ 1, %for.cond108 ]
  %exitcond130.not = icmp eq i64 %indvars.iv127, 27
  br i1 %exitcond130.not, label %for.inc129, label %for.cond114

for.cond114:                                      ; preds = %for.cond111, %for.inc123
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc123 ], [ 1, %for.cond111 ]
  %exitcond.not = icmp eq i64 %indvars.iv, 27
  br i1 %exitcond.not, label %for.inc126, label %for.inc123

for.inc123:                                       ; preds = %for.cond114
  %arrayidx122 = getelementptr inbounds nuw [27 x [27 x [27 x i32]]], ptr %fre107, i64 0, i64 %indvars.iv131, i64 %indvars.iv127, i64 %indvars.iv
  store i32 0, ptr %arrayidx122, align 4, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond114, !llvm.loop !32

for.inc126:                                       ; preds = %for.cond114
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1
  br label %for.cond111, !llvm.loop !33

for.inc129:                                       ; preds = %for.cond111
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1
  br label %for.cond108, !llvm.loop !34

for.cond132:                                      ; preds = %for.cond132.preheader, %for.inc157
  %17 = phi i8 [ undef, %for.cond132.preheader ], [ %18, %for.inc157 ]
  %indvars.iv135 = phi i64 [ 0, %for.cond132.preheader ], [ %indvars.iv.next136, %for.inc157 ]
  %exitcond139 = icmp eq i64 %indvars.iv135, %wide.trip.count
  br i1 %exitcond139, label %for.cond160, label %for.inc157

for.inc157:                                       ; preds = %for.cond132
  %conv138 = sext i8 %17 to i64
  %sub139 = add nsw i64 %conv138, -96
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1
  %arrayidx144 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %indvars.iv.next136
  %18 = load i8, ptr %arrayidx144, align 1, !tbaa !27, !invariant.load !8
  %conv145 = sext i8 %18 to i64
  %sub146 = add nsw i64 %conv145, -96
  %19 = add nuw nsw i64 %indvars.iv135, 2
  %arrayidx151 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %19
  %20 = load i8, ptr %arrayidx151, align 1, !tbaa !27, !invariant.load !8
  %conv152 = sext i8 %20 to i64
  %sub153 = add nsw i64 %conv152, -96
  %arrayidx155 = getelementptr inbounds [27 x [27 x [27 x i32]]], ptr %fre107, i64 0, i64 %sub139, i64 %sub146, i64 %sub153
  %21 = load i32, ptr %arrayidx155, align 4, !tbaa !22, !invariant.load !8
  %inc156 = add nsw i32 %21, 1
  store i32 %inc156, ptr %arrayidx155, align 4, !tbaa !22
  br label %for.cond132, !llvm.loop !35

for.cond160:                                      ; preds = %for.cond132, %for.inc190
  %indvars.iv148 = phi i64 [ %indvars.iv.next149, %for.inc190 ], [ 1, %for.cond132 ]
  %max.4 = phi i32 [ %max.5, %for.inc190 ], [ 0, %for.cond132 ]
  %exitcond151.not = icmp eq i64 %indvars.iv148, 27
  br i1 %exitcond151.not, label %for.end192, label %for.cond163

for.cond163:                                      ; preds = %for.cond160, %for.inc187
  %indvars.iv144 = phi i64 [ %indvars.iv.next145, %for.inc187 ], [ 1, %for.cond160 ]
  %max.5 = phi i32 [ %max.6, %for.inc187 ], [ %max.4, %for.cond160 ]
  %exitcond147.not = icmp eq i64 %indvars.iv144, 27
  br i1 %exitcond147.not, label %for.inc190, label %for.cond166

for.cond166:                                      ; preds = %for.cond163, %for.body168
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %for.body168 ], [ 1, %for.cond163 ]
  %max.6 = phi i32 [ %spec.select124, %for.body168 ], [ %max.5, %for.cond163 ]
  %exitcond143.not = icmp eq i64 %indvars.iv140, 27
  br i1 %exitcond143.not, label %for.inc187, label %for.body168

for.body168:                                      ; preds = %for.cond166
  %arrayidx174 = getelementptr inbounds nuw [27 x [27 x [27 x i32]]], ptr %fre107, i64 0, i64 %indvars.iv148, i64 %indvars.iv144, i64 %indvars.iv140
  %22 = load i32, ptr %arrayidx174, align 4, !tbaa !22, !invariant.load !8
  %spec.select124 = call i32 @llvm.smax.i32(i32 %22, i32 %max.6)
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1
  br label %for.cond166, !llvm.loop !36

for.inc187:                                       ; preds = %for.cond166
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1
  br label %for.cond163, !llvm.loop !37

for.inc190:                                       ; preds = %for.cond163
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1
  br label %for.cond160, !llvm.loop !38

for.end192:                                       ; preds = %for.cond160
  %cmp193 = icmp eq i32 %max.4, 1
  br i1 %cmp193, label %if.then194, label %if.else196

if.then194:                                       ; preds = %for.end192
  %call195 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str)
  br label %if.end199

if.else196:                                       ; preds = %for.end192
  %call197 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %max.4)
  %call198 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call197, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end199

if.end199:                                        ; preds = %if.else196, %if.then194
  %max.8 = phi i32 [ -1, %if.then194 ], [ %max.4, %if.else196 ]
  %23 = call i32 @llvm.smax.i32(i32 %conv, i32 1)
  %24 = add nsw i32 %23, -1
  %wide.trip.count157 = zext nneg i32 %24 to i64
  br label %for.cond200

for.cond200:                                      ; preds = %for.inc259, %if.end199
  %indvars.iv152 = phi i64 [ %indvars.iv.next153, %for.inc259 ], [ 0, %if.end199 ]
  %exitcond158 = icmp eq i64 %indvars.iv152, %wide.trip.count157
  br i1 %exitcond158, label %for.end261, label %for.body203

for.body203:                                      ; preds = %for.cond200
  %arrayidx205 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %indvars.iv152
  %25 = load i8, ptr %arrayidx205, align 1, !tbaa !27
  %conv206 = sext i8 %25 to i64
  %sub207 = add nsw i64 %conv206, -96
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1
  %arrayidx212 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %indvars.iv.next153
  %26 = load i8, ptr %arrayidx212, align 1, !tbaa !27
  %conv213 = sext i8 %26 to i64
  %sub214 = add nsw i64 %conv213, -96
  %27 = add nuw nsw i64 %indvars.iv152, 2
  %arrayidx219 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %27
  %28 = load i8, ptr %arrayidx219, align 1, !tbaa !27
  %conv220 = sext i8 %28 to i64
  %sub221 = add nsw i64 %conv220, -96
  %arrayidx223 = getelementptr inbounds [27 x [27 x [27 x i32]]], ptr %fre107, i64 0, i64 %sub207, i64 %sub214, i64 %sub221
  %29 = load i32, ptr %arrayidx223, align 4, !tbaa !22
  %cmp224 = icmp eq i32 %29, %max.8
  br i1 %cmp224, label %if.then225, label %for.inc259

if.then225:                                       ; preds = %for.body203
  %call228 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %25)
  %30 = load i8, ptr %arrayidx212, align 1, !tbaa !27
  %call232 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %call228, i8 noundef signext %30)
  %31 = load i8, ptr %arrayidx219, align 1, !tbaa !27
  %call236 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %call232, i8 noundef signext %31)
  %call237 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call236, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %32 = load i8, ptr %arrayidx205, align 1, !tbaa !27
  %conv240 = sext i8 %32 to i64
  %sub241 = add nsw i64 %conv240, -96
  %33 = load i8, ptr %arrayidx212, align 1, !tbaa !27
  %conv247 = sext i8 %33 to i64
  %sub248 = add nsw i64 %conv247, -96
  %34 = load i8, ptr %arrayidx219, align 1, !tbaa !27
  %conv254 = sext i8 %34 to i64
  %sub255 = add nsw i64 %conv254, -96
  %arrayidx257 = getelementptr inbounds [27 x [27 x [27 x i32]]], ptr %fre107, i64 0, i64 %sub241, i64 %sub248, i64 %sub255
  store i32 0, ptr %arrayidx257, align 4, !tbaa !22
  br label %for.inc259

for.inc259:                                       ; preds = %for.body203, %if.then225
  br label %for.cond200, !llvm.loop !39

for.end261:                                       ; preds = %for.cond200
  call void @llvm.lifetime.end.p0(i64 78732, ptr nonnull %fre107) #10
  br label %if.end461

for.cond263:                                      ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit, %for.inc292
  %indvars.iv198 = phi i64 [ %indvars.iv.next199, %for.inc292 ], [ 1, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit ]
  %exitcond201.not = icmp eq i64 %indvars.iv198, 27
  br i1 %exitcond201.not, label %for.cond295.preheader, label %for.cond266

for.cond295.preheader:                            ; preds = %for.cond263
  %35 = call i32 @llvm.smax.i32(i32 %conv, i32 3)
  %36 = add nsw i32 %35, -3
  %wide.trip.count208 = zext nneg i32 %36 to i64
  br label %for.cond295

for.cond266:                                      ; preds = %for.cond263, %for.inc289
  %indvars.iv194 = phi i64 [ %indvars.iv.next195, %for.inc289 ], [ 1, %for.cond263 ]
  %exitcond197.not = icmp eq i64 %indvars.iv194, 27
  br i1 %exitcond197.not, label %for.inc292, label %for.cond269

for.cond269:                                      ; preds = %for.cond266, %for.inc286
  %indvars.iv190 = phi i64 [ %indvars.iv.next191, %for.inc286 ], [ 1, %for.cond266 ]
  %exitcond193.not = icmp eq i64 %indvars.iv190, 27
  br i1 %exitcond193.not, label %for.inc289, label %for.cond272

for.cond272:                                      ; preds = %for.cond269, %for.inc283
  %indvars.iv186 = phi i64 [ %indvars.iv.next187, %for.inc283 ], [ 1, %for.cond269 ]
  %exitcond189.not = icmp eq i64 %indvars.iv186, 27
  br i1 %exitcond189.not, label %for.inc286, label %for.inc283

for.inc283:                                       ; preds = %for.cond272
  %arrayidx282 = getelementptr inbounds nuw [27 x [27 x [27 x [27 x i32]]]], ptr @freq, i64 0, i64 %indvars.iv198, i64 %indvars.iv194, i64 %indvars.iv190, i64 %indvars.iv186
  store i32 0, ptr %arrayidx282, align 4, !tbaa !22
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1
  br label %for.cond272, !llvm.loop !40

for.inc286:                                       ; preds = %for.cond272
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 1
  br label %for.cond269, !llvm.loop !41

for.inc289:                                       ; preds = %for.cond269
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1
  br label %for.cond266, !llvm.loop !42

for.inc292:                                       ; preds = %for.cond266
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1
  br label %for.cond263, !llvm.loop !43

for.cond295:                                      ; preds = %for.cond295.preheader, %for.inc327
  %37 = phi i8 [ undef, %for.cond295.preheader ], [ %38, %for.inc327 ]
  %indvars.iv202 = phi i64 [ 0, %for.cond295.preheader ], [ %indvars.iv.next203, %for.inc327 ]
  %exitcond209 = icmp eq i64 %indvars.iv202, %wide.trip.count208
  br i1 %exitcond209, label %for.cond330, label %for.inc327

for.inc327:                                       ; preds = %for.cond295
  %conv301 = sext i8 %37 to i64
  %sub302 = add nsw i64 %conv301, -96
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1
  %arrayidx307 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %indvars.iv.next203
  %38 = load i8, ptr %arrayidx307, align 1, !tbaa !27, !invariant.load !8
  %conv308 = sext i8 %38 to i64
  %sub309 = add nsw i64 %conv308, -96
  %39 = add nuw nsw i64 %indvars.iv202, 2
  %arrayidx314 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %39
  %40 = load i8, ptr %arrayidx314, align 1, !tbaa !27, !invariant.load !8
  %conv315 = sext i8 %40 to i64
  %sub316 = add nsw i64 %conv315, -96
  %41 = add nuw nsw i64 %indvars.iv202, 3
  %arrayidx321 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %41
  %42 = load i8, ptr %arrayidx321, align 1, !tbaa !27, !invariant.load !8
  %conv322 = sext i8 %42 to i64
  %sub323 = add nsw i64 %conv322, -96
  %arrayidx325 = getelementptr inbounds [27 x [27 x [27 x [27 x i32]]]], ptr @freq, i64 0, i64 %sub302, i64 %sub309, i64 %sub316, i64 %sub323
  %43 = load i32, ptr %arrayidx325, align 4, !tbaa !22, !invariant.load !8
  %inc326 = add nsw i32 %43, 1
  store i32 %inc326, ptr %arrayidx325, align 4, !tbaa !22
  br label %for.cond295, !llvm.loop !44

for.cond330:                                      ; preds = %for.cond295, %for.inc370
  %indvars.iv222 = phi i64 [ %indvars.iv.next223, %for.inc370 ], [ 1, %for.cond295 ]
  %max.9 = phi i32 [ %max.10, %for.inc370 ], [ 0, %for.cond295 ]
  %exitcond225.not = icmp eq i64 %indvars.iv222, 27
  br i1 %exitcond225.not, label %for.end372, label %for.cond333

for.cond333:                                      ; preds = %for.cond330, %for.inc367
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %for.inc367 ], [ 1, %for.cond330 ]
  %max.10 = phi i32 [ %max.11, %for.inc367 ], [ %max.9, %for.cond330 ]
  %exitcond221.not = icmp eq i64 %indvars.iv218, 27
  br i1 %exitcond221.not, label %for.inc370, label %for.cond336

for.cond336:                                      ; preds = %for.cond333, %for.inc364
  %indvars.iv214 = phi i64 [ %indvars.iv.next215, %for.inc364 ], [ 1, %for.cond333 ]
  %max.11 = phi i32 [ %max.12, %for.inc364 ], [ %max.10, %for.cond333 ]
  %exitcond217.not = icmp eq i64 %indvars.iv214, 27
  br i1 %exitcond217.not, label %for.inc367, label %for.cond339

for.cond339:                                      ; preds = %for.cond336, %for.body341
  %indvars.iv210 = phi i64 [ %indvars.iv.next211, %for.body341 ], [ 1, %for.cond336 ]
  %max.12 = phi i32 [ %spec.select125, %for.body341 ], [ %max.11, %for.cond336 ]
  %exitcond213.not = icmp eq i64 %indvars.iv210, 27
  br i1 %exitcond213.not, label %for.inc364, label %for.body341

for.body341:                                      ; preds = %for.cond339
  %arrayidx349 = getelementptr inbounds nuw [27 x [27 x [27 x [27 x i32]]]], ptr @freq, i64 0, i64 %indvars.iv222, i64 %indvars.iv218, i64 %indvars.iv214, i64 %indvars.iv210
  %44 = load i32, ptr %arrayidx349, align 4, !tbaa !22, !invariant.load !8
  %spec.select125 = call i32 @llvm.smax.i32(i32 %44, i32 %max.12)
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1
  br label %for.cond339, !llvm.loop !45

for.inc364:                                       ; preds = %for.cond339
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1
  br label %for.cond336, !llvm.loop !46

for.inc367:                                       ; preds = %for.cond336
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1
  br label %for.cond333, !llvm.loop !47

for.inc370:                                       ; preds = %for.cond333
  %indvars.iv.next223 = add nuw nsw i64 %indvars.iv222, 1
  br label %for.cond330, !llvm.loop !48

for.end372:                                       ; preds = %for.cond330
  %cmp373 = icmp eq i32 %max.9, 1
  br i1 %cmp373, label %if.then374, label %if.else376

if.then374:                                       ; preds = %for.end372
  %call375 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str)
  br label %if.end379

if.else376:                                       ; preds = %for.end372
  %call377 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %max.9)
  %call378 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call377, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end379

if.end379:                                        ; preds = %if.else376, %if.then374
  %max.14 = phi i32 [ -1, %if.then374 ], [ %max.9, %if.else376 ]
  %45 = call i32 @llvm.smax.i32(i32 %conv, i32 1)
  %46 = add nsw i32 %45, -1
  %wide.trip.count232 = zext nneg i32 %46 to i64
  br label %for.cond380

for.cond380:                                      ; preds = %for.inc457, %if.end379
  %indvars.iv226 = phi i64 [ %indvars.iv.next227, %for.inc457 ], [ 0, %if.end379 ]
  %exitcond233 = icmp eq i64 %indvars.iv226, %wide.trip.count232
  br i1 %exitcond233, label %if.end461, label %for.body383

for.body383:                                      ; preds = %for.cond380
  %arrayidx385 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %indvars.iv226
  %47 = load i8, ptr %arrayidx385, align 1, !tbaa !27
  %conv386 = sext i8 %47 to i64
  %sub387 = add nsw i64 %conv386, -96
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1
  %arrayidx392 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %indvars.iv.next227
  %48 = load i8, ptr %arrayidx392, align 1, !tbaa !27
  %conv393 = sext i8 %48 to i64
  %sub394 = add nsw i64 %conv393, -96
  %49 = add nuw nsw i64 %indvars.iv226, 2
  %arrayidx399 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %49
  %50 = load i8, ptr %arrayidx399, align 1, !tbaa !27
  %conv400 = sext i8 %50 to i64
  %sub401 = add nsw i64 %conv400, -96
  %51 = add nuw nsw i64 %indvars.iv226, 3
  %arrayidx406 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %51
  %52 = load i8, ptr %arrayidx406, align 1, !tbaa !27
  %conv407 = sext i8 %52 to i64
  %sub408 = add nsw i64 %conv407, -96
  %arrayidx410 = getelementptr inbounds [27 x [27 x [27 x [27 x i32]]]], ptr @freq, i64 0, i64 %sub387, i64 %sub394, i64 %sub401, i64 %sub408
  %53 = load i32, ptr %arrayidx410, align 4, !tbaa !22
  %cmp411 = icmp eq i32 %53, %max.14
  br i1 %cmp411, label %if.then412, label %for.inc457

if.then412:                                       ; preds = %for.body383
  %call415 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %47)
  %54 = load i8, ptr %arrayidx392, align 1, !tbaa !27
  %call419 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %call415, i8 noundef signext %54)
  %55 = load i8, ptr %arrayidx399, align 1, !tbaa !27
  %call423 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %call419, i8 noundef signext %55)
  %56 = load i8, ptr %arrayidx406, align 1, !tbaa !27
  %call427 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %call423, i8 noundef signext %56)
  %call428 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call427, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %57 = load i8, ptr %arrayidx385, align 1, !tbaa !27
  %conv431 = sext i8 %57 to i64
  %sub432 = add nsw i64 %conv431, -96
  %58 = load i8, ptr %arrayidx392, align 1, !tbaa !27
  %conv438 = sext i8 %58 to i64
  %sub439 = add nsw i64 %conv438, -96
  %59 = load i8, ptr %arrayidx399, align 1, !tbaa !27
  %conv445 = sext i8 %59 to i64
  %sub446 = add nsw i64 %conv445, -96
  %60 = load i8, ptr %arrayidx406, align 1, !tbaa !27
  %conv452 = sext i8 %60 to i64
  %sub453 = add nsw i64 %conv452, -96
  %arrayidx455 = getelementptr inbounds [27 x [27 x [27 x [27 x i32]]]], ptr @freq, i64 0, i64 %sub432, i64 %sub439, i64 %sub446, i64 %sub453
  store i32 0, ptr %arrayidx455, align 4, !tbaa !22
  br label %for.inc457

for.inc457:                                       ; preds = %for.body383, %if.then412
  br label %for.cond380, !llvm.loop !49

if.end461:                                        ; preds = %for.cond380, %for.end261, %for.end103
  call void @llvm.lifetime.end.p0(i64 505, ptr nonnull %str) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #6

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #5 align 2

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

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
!8 = !{}
!9 = !{!10, !11, i64 16}
!10 = !{!"_ZTSSt8ios_base", !11, i64 8, !11, i64 16, !13, i64 24, !14, i64 28, !14, i64 32, !15, i64 40, !17, i64 48, !12, i64 64, !18, i64 192, !19, i64 200, !20, i64 208}
!11 = !{!"long", !12, i64 0}
!12 = !{!"omnipotent char", !7, i64 0}
!13 = !{!"_ZTSSt13_Ios_Fmtflags", !12, i64 0}
!14 = !{!"_ZTSSt12_Ios_Iostate", !12, i64 0}
!15 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !16, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"_ZTSNSt8ios_base6_WordsE", !16, i64 0, !11, i64 8}
!18 = !{!"int", !12, i64 0}
!19 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !16, i64 0}
!20 = !{!"_ZTSSt6locale", !21, i64 0}
!21 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!22 = !{!18, !18, i64 0}
!23 = distinct !{!23, !24, !25}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = distinct !{!26, !24, !25}
!27 = !{!12, !12, i64 0}
!28 = distinct !{!28, !24, !25}
!29 = distinct !{!29, !24, !25}
!30 = distinct !{!30, !24, !25}
!31 = distinct !{!31, !24, !25}
!32 = distinct !{!32, !24, !25}
!33 = distinct !{!33, !24, !25}
!34 = distinct !{!34, !24, !25}
!35 = distinct !{!35, !24, !25}
!36 = distinct !{!36, !24, !25}
!37 = distinct !{!37, !24, !25}
!38 = distinct !{!38, !24, !25}
!39 = distinct !{!39, !24, !25}
!40 = distinct !{!40, !24, !25}
!41 = distinct !{!41, !24, !25}
!42 = distinct !{!42, !24, !25}
!43 = distinct !{!43, !24, !25}
!44 = distinct !{!44, !24, !25}
!45 = distinct !{!45, !24, !25}
!46 = distinct !{!46, !24, !25}
!47 = distinct !{!47, !24, !25}
!48 = distinct !{!48, !24, !25}
!49 = distinct !{!49, !24, !25}
